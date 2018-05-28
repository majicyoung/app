package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceResult;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceDocument;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceResultRow;
import com.fairagora.verifik8.v8web.data.infra.compliance.ComplianceQueryResultTestingProvider;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.infra.compliance.ExcelReader;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityRepository;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

@Service
public class ComplianceService extends AbstractV8Service {


	private static final Logger LOGGER = LoggerFactory.getLogger(ComplianceService.class);

	private static final String XLS_FILE = "static/xls/compliance_control.xlsx";

	@Autowired
	private ResourceLoader resourceLoader;

	@Autowired
	private RegEntityRepository regEntityRepository;

	private ComplianceDocument document;

	private ComplianceQueryResultTestingProvider testingCompliance;

	public ComplianceService() {
		testingCompliance = new ComplianceQueryResultTestingProvider();
	}

	public void init() {
		try {
			Resource resource = resourceLoader.getResource("classpath:" + XLS_FILE);
			document = ExcelReader.read(resource.getInputStream());
		} catch (IOException | NullPointerException | InvalidFormatException e) {
			LOGGER.error("Database reader couldn't not be initialized. ", e);
		}
	}


	public String createCompliance(Long farmId) {

		RegEntity farm = regEntityRepository.findOne(farmId);
		ComplianceResult complianceResult = new ComplianceResult();
		complianceResult.setStandard(document.getStandard());
		complianceResult.setFarmId(String.valueOf(farmId));
		complianceResult.setFarmName(farm.getName());
		complianceResult.setDateOfCompliance(String.valueOf(new Date()));
		complianceResult.setRowResults(new ArrayList<>());


		document.getRows().forEach(row -> {

			ComplianceResultRow rowResult = new ComplianceResultRow();
			try {
				jdbc.query(formatQueryString(row.getSql(), String.valueOf(farmId)), rs -> {
					rowResult.setName(row.getIndicator());
					rowResult.setResult(testingCompliance.TestSqlResult(row, rs.getString(1)));
					complianceResult.setRowResult(rowResult);
				});
			} catch (DataAccessException e) {
				rowResult.setName(row.getIndicator());
				rowResult.setResult(e.toString());
				complianceResult.setRowResult(rowResult);

			}


		});

		String filename = null;
		try {
			filename = ExcelReader.write(complianceResult);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return filename;
	}

	private String formatQueryString(String query, String farmId){
		return StringUtils.replace(query, "{ID}", farmId);
	}


}
