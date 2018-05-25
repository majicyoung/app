package com.fairagora.verifik8.v8web.data.domain.commons.compliance;

public class TestingCompliance {

	public static final String NUMERIC = "numeric";
	public static final String BOOLEAN = "boolean";

	private ComplianceComparator complianceComparator;

	public TestingCompliance() {
		this.complianceComparator = new ComplianceComparator();
	}

	/**
	 * Test the SQL query with threshold
	 * @param row Document row
	 * @param sqlResult sql query result
	 * @return testing result
	 */
	public String TestSqlResult(ComplianceDocumentRow row, String sqlResult) {

		switch (row.getTestType()) {
			case NUMERIC:
				return complianceComparator.numericTestResult(sqlResult, row.getThreshold(), row.getComparator()).toString();
			case BOOLEAN:
				return complianceComparator.booleanTestResult(sqlResult).toString();
			default:
				return Boolean.FALSE.toString();
		}
	}

}
