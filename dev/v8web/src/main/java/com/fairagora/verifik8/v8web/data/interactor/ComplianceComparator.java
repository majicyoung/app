package com.fairagora.verifik8.v8web.data.interactor;

public class ComplianceComparator {


	/**
	 * Test numerically the sql query.
	 *
	 * @param sqlResult sql result int value
	 * @param threshold value to compare result with
	 * @param comparator comparator in string
	 * @return boolean of the result
	 */
	public Boolean numericTestResult(String sqlResult, String threshold, String comparator) {
		int sqlResultInt = Integer.valueOf(sqlResult);
		int thresholdInt = Integer.valueOf(threshold);

		switch (comparator) {
			case "=":
				return sqlResultInt == thresholdInt;
			case ">":
				return sqlResultInt > thresholdInt;
			case "<":
				return sqlResultInt < thresholdInt;
			case ">=":
				return sqlResultInt >= thresholdInt;
			case "<=":
				return sqlResultInt <= thresholdInt;
			case "!=":
				return sqlResultInt != thresholdInt;
			default:
				return false;
		}
	}

	public Boolean booleanTestResult(String sqlResult){
		return Integer.valueOf(sqlResult) != 0;
	}
}
