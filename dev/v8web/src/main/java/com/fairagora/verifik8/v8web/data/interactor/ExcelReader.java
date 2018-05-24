package com.fairagora.verifik8.v8web.data.interactor;

import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceResult;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.Document;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.Row;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;

public class ExcelReader {

	public static Document read(InputStream inputStream) throws IOException, InvalidFormatException {

		Document document = new Document();

		// Creating a Workbook from an Excel file (.xls or .xlsx)
		Workbook workbook = WorkbookFactory.create(inputStream);

		// Getting the Sheet at index zero
		Sheet sheet = workbook.getSheetAt(0);

		// Create a DataFormatter to format and get each cell's value as String
		DataFormatter dataFormatter = new DataFormatter();

		//Read row and set it on document.
	//	sheet.removeRow(sheet.getRow(0));
		sheet.forEach(row -> {
			if (dataFormatter.formatCellValue(row.getCell(0)) != null && !dataFormatter.formatCellValue(row.getCell(0)).trim().equals("")){
				Row documentRow = new Row();
				documentRow.setName( dataFormatter.formatCellValue(row.getCell(0)));
				documentRow.setIndicator( dataFormatter.formatCellValue(row.getCell(1)));
				documentRow.setSql( dataFormatter.formatCellValue(row.getCell(2)));
				documentRow.setTestType( dataFormatter.formatCellValue(row.getCell(3)));
				documentRow.setThreshold( dataFormatter.formatCellValue(row.getCell(4)));
				documentRow.setComparator( dataFormatter.formatCellValue(row.getCell(5)));
				documentRow.setComment( dataFormatter.formatCellValue(row.getCell(6)));
				document.setRow(documentRow);
			}
		});

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

		// Create cells
//		for(int i = 0; i < columns.length; i++) {
//			Cell cell = headerRow.createCell(i);
//			cell.setCellValue(columns[i]);
//			cell.setCellStyle(headerCellStyle);
//		}

		// Create Cell Style for formatting Date
		CellStyle dateCellStyle = workbook.createCellStyle();
		dateCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd-MM-yyyy"));

		// Create Other rows and cells with employees data
		AtomicInteger rowNum = new AtomicInteger(1);
//		for(Employee employee: employees) {
//			Row row = sheet.createRow(rowNum++);
//
//			row.createCell(0)
//					.setCellValue(employee.getName());
//
//			row.createCell(1)
//					.setCellValue(employee.getEmail());
//
//			Cell dateOfBirthCell = row.createCell(2);
//			dateOfBirthCell.setCellValue(employee.getDateOfBirth());
//			dateOfBirthCell.setCellStyle(dateCellStyle);
//
//			row.createCell(3)
//					.setCellValue(employee.getSalary());
//		}
		complianceResult.getRowResults().forEach(rowResult -> {
			org.apache.poi.ss.usermodel.Row row = sheet.createRow(rowNum.getAndIncrement());

			row.createCell(0)
					.setCellValue(rowResult.getName());

			row.createCell(1)
					.setCellValue(rowResult.getResult());
		});

//		// Resize all columns to fit the content size
//		for(int i = 0; i < columns.length; i++) {
//			sheet.autoSizeColumn(i);
//		}

		// Write the output to a file
		FileOutputStream fileOut = new FileOutputStream("poi-generated-file.xlsx");
		workbook.write(fileOut);
		fileOut.close();

		// Closing the workbook
		workbook.close();
		return workbook;
	}





}
