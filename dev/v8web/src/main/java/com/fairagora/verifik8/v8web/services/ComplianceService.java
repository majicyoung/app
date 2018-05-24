package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceResult;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.Document;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.RowResult;
import com.fairagora.verifik8.v8web.data.interactor.ExcelReader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;

@Service
public class ComplianceService extends AbstractV8Service {


	private static final Logger LOGGER = LoggerFactory.getLogger(ComplianceService.class);

	private static final String XLS_FILE = "static/xls/compliance_control.xlsx";

	@Autowired
	private ResourceLoader resourceLoader;

	private Document document;

	public void init() {
		try {
			Resource resource = resourceLoader.getResource("classpath:" + XLS_FILE);

			document = ExcelReader.read(resource.getInputStream());

		} catch (IOException | NullPointerException | InvalidFormatException e) {
			LOGGER.error("Database reader cound not be initialized. ", e);
		}
	}


	public Workbook createCompliance() {

		ComplianceResult complianceResult = new ComplianceResult();
		complianceResult.setRowResults(new ArrayList<>());


		document.getRows().forEach(row -> {

			RowResult rowResult = new RowResult();
			try {
				jdbc.query(row.getSql(), rs -> {
					rowResult.setName(row.getName());
					rowResult.setResult(rs.getString(1));
					complianceResult.setRowResult(rowResult);
					System.out.println(rs.toString());
				});
			} catch (DataAccessException e) {
				rowResult.setName("ERROR");
				rowResult.setResult(e.toString());
			}


		});

		Workbook workbook = null;
		try {
			workbook = ExcelReader.write(complianceResult);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return workbook;
	}


}
