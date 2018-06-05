package com.fairagora.verifik8.v8web.data.infra.compliance;

import com.fairagora.verifik8.v8web.config.helper.BooleanHelper;
import com.fairagora.verifik8.v8web.data.domain.commons.compliance.ComplianceDocumentRow;

public class ComplianceQueryResultTestingProvider {

	public static final String NUMERIC = "numeric";
	public static final String BOOLEAN = "boolean";

	private ComplianceComparator complianceComparator;

	public ComplianceQueryResultTestingProvider() {
		this.complianceComparator = new ComplianceComparator();
	}

	/**
	 * Test the SQL query with threshold
	 *
	 * @param row       Document row
	 * @param sqlResult sql query result
	 * @return testing result
	 */
	public String TestSqlResult(ComplianceDocumentRow row, String sqlResult) {

		switch (row.getTestType()) {
			case NUMERIC:
				return BooleanHelper.toString(complianceComparator.numericTestResult(sqlResult, row.getThreshold(), row.getComparator()));
			case BOOLEAN:
				return BooleanHelper.toString(complianceComparator.booleanTestResult(sqlResult));
			default:
				return BooleanHelper.toString(Boolean.FALSE);
		}
	}

}
