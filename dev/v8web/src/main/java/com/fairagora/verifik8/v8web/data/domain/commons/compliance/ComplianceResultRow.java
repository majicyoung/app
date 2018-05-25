package com.fairagora.verifik8.v8web.data.domain.commons.compliance;

public class ComplianceResultRow {

	private String name;
	private String result;

	public ComplianceResultRow() {
	}

	public ComplianceResultRow(String name, String result) {
		this.name = name;
		this.result = result;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
}
