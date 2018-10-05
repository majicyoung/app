package com.fairagora.verifik8.v8web.data.infra.compliance;

import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceResult;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceDocument;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceDocumentRow;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public class ExcelReader {

	public static ComplianceDocument read(InputStream inputStream) throws IOException, InvalidFormatException {

		final int INDICATOR_NAME = 0;
		final int SQL = 1;
		final int TEST = 2;
		final int THRESHOLD = 3;
		final int COMPARATOR = 4;
		final int COMMENT = 5;


		ComplianceDocument document = new ComplianceDocument();

		// Creating a Workbook from an Excel file (.xls or .xlsx)
		Workbook workbook = WorkbookFactory.create(inputStream);

		// Getting the Sheet at index zero
		Sheet sheet = workbook.getSheetAt(0);

		// Create a DataFormatter to format and gets each cell's value as String
		DataFormatter dataFormatter = new DataFormatter();

		//Read row and set it on document.

		Iterator<org.apache.poi.ss.usermodel.Row> rowIterator = sheet.rowIterator();
		//Remove header
		org.apache.poi.ss.usermodel.Row rowStandard = rowIterator.next();
		document.setStandard(dataFormatter.formatCellValue(rowStandard.getCell(1)));
		rowIterator.next();
		//Loop on row
		while (rowIterator.hasNext()) {
			org.apache.poi.ss.usermodel.Row row = rowIterator.next();

			if (StringUtils.isNotEmpty(dataFormatter.formatCellValue(row.getCell(INDICATOR_NAME)))) {
				ComplianceDocumentRow documentRow = new ComplianceDocumentRow();
				documentRow.setIndicator(dataFormatter.formatCellValue(row.getCell(INDICATOR_NAME)));
				documentRow.setSql(dataFormatter.formatCellValue(row.getCell(SQL)));
				documentRow.setTestType(dataFormatter.formatCellValue(row.getCell(TEST)));
				documentRow.setThreshold(dataFormatter.formatCellValue(row.getCell(THRESHOLD)));
				documentRow.setComparator(dataFormatter.formatCellValue(row.getCell(COMPARATOR)));
				documentRow.setComment(dataFormatter.formatCellValue(row.getCell(COMMENT)));
				document.setRow(documentRow);
			}
			System.out.println();
		}

		// Closing the workbook
		workbook.close();
		return document;
	}

	public static String write(ComplianceResult complianceResult) throws IOException {

		final String SHEET_NAME = "Employee";
		final String STANDARD = "Standard";
		final String FARM_ID = "Farm ID";
		final String FARM_NAME = "Farm Name";
		final String DATE = "Date";
		final String INDICATOR = "Indicator";

		// Create a Workbook
		Workbook workbook = new XSSFWorkbook(); // new HSSFWorkbook() for generating `.xls` file

        /* CreationHelper helps us create instances of various things like DataFormat,
           Hyperlink, RichTextString etc, in a format (HSSF, XSSF) independent way */
		CreationHelper createHelper = workbook.getCreationHelper();

		// Create a Sheet
		Sheet sheet = workbook.createSheet(SHEET_NAME);

		// Create a Font for styling header cells
		Font headerFont = workbook.createFont();
		headerFont.setBold(true);
		headerFont.setFontHeightInPoints((short) 14);
		headerFont.setColor(IndexedColors.RED.getIndex());

		// Create a CellStyle with the font
		CellStyle headerCellStyle = workbook.createCellStyle();
		headerCellStyle.setFont(headerFont);

		// Create a Row
		org.apache.poi.ss.usermodel.Row headerRow = sheet.createRow(0);

		// Create Other rows and cells with employees data
		AtomicInteger rowNum = new AtomicInteger(1);

		org.apache.poi.ss.usermodel.Row rowStandard = sheet.createRow(rowNum.getAndIncrement());
		rowStandard.createCell(0).setCellValue(STANDARD);
		rowStandard.createCell(1).setCellValue(complianceResult.getStandard());

		org.apache.poi.ss.usermodel.Row rowFarmID = sheet.createRow(rowNum.getAndIncrement());
		rowFarmID.createCell(0).setCellValue(FARM_ID);
		rowFarmID.createCell(1).setCellValue(complianceResult.getFarmId());

		org.apache.poi.ss.usermodel.Row rowFarmName = sheet.createRow(rowNum.getAndIncrement());
		rowFarmName.createCell(0).setCellValue(FARM_NAME);
		rowFarmName.createCell(1).setCellValue(complianceResult.getFarmName());

		org.apache.poi.ss.usermodel.Row rowDate = sheet.createRow(rowNum.getAndIncrement());
		rowDate.createCell(0).setCellValue(DATE);
		rowDate.createCell(1).setCellValue(complianceResult.getDateOfCompliance());

		org.apache.poi.ss.usermodel.Row rowIndicator = sheet.createRow(rowNum.getAndIncrement());
		rowIndicator.createCell(0).setCellValue(INDICATOR);
		rowIndicator.createCell(1).setCellValue(complianceResult.getCompliance());


		complianceResult.getRowResults().forEach(rowResult -> {
			org.apache.poi.ss.usermodel.Row row = sheet.createRow(rowNum.getAndIncrement());
			row.createCell(0).setCellValue(rowResult.getName());
			row.createCell(1).setCellValue(rowResult.getResult());
		});

		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yy-HH-mm-ss");
		String filename = complianceResult.getStandard() + dateFormat.format(new Date());

		// Write the output to a file
		File tmpFile = File.createTempFile(filename, ".xls");
		FileOutputStream fileOut = new FileOutputStream(tmpFile);
		workbook.write(fileOut);
		fileOut.close();

		// Closing the workbook
		workbook.close();
		return tmpFile.getAbsolutePath();
	}


}
