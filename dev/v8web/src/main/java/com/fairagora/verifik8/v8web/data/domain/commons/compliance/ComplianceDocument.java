package com.fairagora.verifik8.v8web.data.domain.commons.compliance;

import java.util.ArrayList;
import java.util.List;

public class ComplianceDocument {

	private List<ComplianceDocumentRow> rows;

	public ComplianceDocument() {
		rows = new ArrayList<>();
	}

	public ComplianceDocument(List<ComplianceDocumentRow> rows) {
		this.rows = rows;
	}

	public List<ComplianceDocumentRow> getRows() {
		return rows;
	}

	public void setRows(List<ComplianceDocumentRow> rows) {
		this.rows = rows;
	}

	public void setRow(ComplianceDocumentRow row){
		this.rows.add(row);
	}

	public ComplianceDocumentRow getRow(int index){
		return this.rows.get(index);
	}
}
