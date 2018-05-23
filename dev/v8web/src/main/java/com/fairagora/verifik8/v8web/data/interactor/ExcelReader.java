package com.fairagora.verifik8.v8web.data.interactor;

import com.fairagora.verifik8.v8web.data.domain.commons.compliance.Document;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.Row;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import java.io.IOException;
import java.io.InputStream;

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
		sheet.forEach(row -> {
			Row documentRow = new Row();
			documentRow.setName( dataFormatter.formatCellValue(row.getCell(0)));
			documentRow.setIndicator( dataFormatter.formatCellValue(row.getCell(1)));
			documentRow.setSql( dataFormatter.formatCellValue(row.getCell(2)));
			documentRow.setTestType( dataFormatter.formatCellValue(row.getCell(3)));
			documentRow.setThreshold( dataFormatter.formatCellValue(row.getCell(4)));
			documentRow.setComparator( dataFormatter.formatCellValue(row.getCell(5)));
			documentRow.setComment( dataFormatter.formatCellValue(row.getCell(6)));
			document.setRow(documentRow);
		});

		// Closing the workbook
		workbook.close();
		return document;
	}
}
