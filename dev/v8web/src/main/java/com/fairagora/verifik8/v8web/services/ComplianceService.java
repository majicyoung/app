package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.commons.compliance.Document;
import com.fairagora.verifik8.v8web.data.interactor.ExcelReader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.IOException;

@Service
public class ComplianceService extends AbstractV8Service {




	private static final Logger LOGGER = LoggerFactory.getLogger(ComplianceService.class);

	private static final String XLS_FILE = "static/xls/compliance_control.xlsx";

	@Autowired
	private ResourceLoader resourceLoader;

	@PostConstruct
	public void init() {
		try {
			Resource resource = resourceLoader.getResource("classpath:"+XLS_FILE);

			Document document = ExcelReader.read(resource.getInputStream());

		} catch (IOException | NullPointerException | InvalidFormatException e) {
			LOGGER.error("Database reader cound not be initialized. ", e);
		}
	}
}
