package com.fairagora.verifik8.v8web.data.interactor;

import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceResult;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceDocument;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceDocumentRow;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public class ExcelReader {

	public static ComplianceDocument read(InputStream inputStream) throws IOException, InvalidFormatException {

		final int STANDARD_NAME = 0;
		final int INDICATOR_NAME = 1;
		final int SQL = 2;
		final int TEST = 3;
		final int THRESHOLD = 4;
		final int COMPARATOR = 5;
		final int COMMENT = 6;


		ComplianceDocument document = new ComplianceDocument();

		// Creating a Workbook from an Excel file (.xls or .xlsx)
		Workbook workbook = WorkbookFactory.create(inputStream);

		// Getting the Sheet at index zero
		Sheet sheet = workbook.getSheetAt(0);

		// Create a DataFormatter to format and get each cell's value as String
		DataFormatter dataFormatter = new DataFormatter();

		//Read row and set it on document.

		Iterator<org.apache.poi.ss.usermodel.Row> rowIterator = sheet.rowIterator();
		//Remove header
		rowIterator.next();
		//Loop on row
		while (rowIterator.hasNext()) {
			org.apache.poi.ss.usermodel.Row row = rowIterator.next();

			if (StringUtils.isNotEmpty(dataFormatter.formatCellValue(row.getCell(STANDARD_NAME)))) {
				ComplianceDocumentRow documentRow = new ComplianceDocumentRow();
				documentRow.setName(dataFormatter.formatCellValue(row.getCell(STANDARD_NAME)));
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

	public static Workbook write(ComplianceResult complianceResult) throws IOException {
		// Create a Workbook
		Workbook workbook = new XSSFWorkbook(); // new HSSFWorkbook() for generating `.xls` file

        /* CreationHelper helps us create instances of various things like DataFormat,
           Hyperlink, RichTextString etc, in a format (HSSF, XSSF) independent way */
		CreationHelper createHelper = workbook.getCreationHelper();

		// Create a Sheet
		Sheet sheet = workbook.createSheet("Employee");

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

		// Create Cell Style for formatting Date
		CellStyle dateCellStyle = workbook.createCellStyle();
		dateCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd-MM-yyyy"));

		// Create Other rows and cells with employees data
		AtomicInteger rowNum = new AtomicInteger(1);

		org.apache.poi.ss.usermodel.Row rowStandard= sheet.createRow(rowNum.getAndIncrement());
		rowStandard.createCell(0).setCellValue("Standard");
		rowStandard.createCell(1).setCellValue(complianceResult.getStandard());
		org.apache.poi.ss.usermodel.Row rowFarmID= sheet.createRow(rowNum.getAndIncrement());
		rowFarmID.createCell(0).setCellValue("Farm ID");
		rowFarmID.createCell(1).setCellValue(complianceResult.getFarmId());
		org.apache.poi.ss.usermodel.Row rowFarmName= sheet.createRow(rowNum.getAndIncrement());
		rowFarmName.createCell(0).setCellValue("Farm Name");
		rowFarmName.createCell(1).setCellValue(complianceResult.getFarmName());
		org.apache.poi.ss.usermodel.Row rowDate= sheet.createRow(rowNum.getAndIncrement());
		rowDate.createCell(0).setCellValue("Date");
		rowDate.createCell(1).setCellValue(complianceResult.getDateOfCompliance());
		org.apache.poi.ss.usermodel.Row rowIndicator= sheet.createRow(rowNum.getAndIncrement());
		rowIndicator.createCell(0).setCellValue("Indicator");
		rowIndicator.createCell(1).setCellValue(complianceResult.getIndicator());



		complianceResult.getRowResults().forEach(rowResult -> {
			org.apache.poi.ss.usermodel.Row row = sheet.createRow(rowNum.getAndIncrement());

			row.createCell(0)
					.setCellValue(rowResult.getName());

			row.createCell(1)
					.setCellValue(rowResult.getResult());
		});

		// Write the output to a file
		FileOutputStream fileOut = new FileOutputStream("poi-generated-file.xlsx");
		workbook.write(fileOut);
		fileOut.close();

		// Closing the workbook
		workbook.close();
		return workbook;
	}


}
