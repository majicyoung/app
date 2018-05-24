package com.fairagora.verifik8.v8web.data.domain.commons.compliance;

import java.util.List;

public class ComplianceResult {

	private String standard;
	private String farmId;
	private String farmName;
	private String dateOfCompliance;
	private String indicator;
	private List<RowResult> rowResults;

	public ComplianceResult() {
	}

	public ComplianceResult(String standard, String farmId, String farmName, String dateOfCompliance, String indicator, List<RowResult> rowResults) {
		this.standard = standard;
		this.farmId = farmId;
		this.farmName = farmName;
		this.dateOfCompliance = dateOfCompliance;
		this.indicator = indicator;
		this.rowResults = rowResults;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getFarmId() {
		return farmId;
	}

	public void setFarmId(String farmId) {
		this.farmId = farmId;
	}

	public String getFarmName() {
		return farmName;
	}

	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}

	public String getDateOfCompliance() {
		return dateOfCompliance;
	}

	public void setDateOfCompliance(String dateOfCompliance) {
		this.dateOfCompliance = dateOfCompliance;
	}

	public String getIndicator() {
		return indicator;
	}

	public void setIndicator(String indicator) {
		this.indicator = indicator;
	}

	public List<RowResult> getRowResults() {
		return rowResults;
	}

	public void setRowResults(List<RowResult> rowResults) {
		this.rowResults = rowResults;
	}


	public RowResult getRowResult(int index) {
		return rowResults.get(index);
	}

	public void setRowResult(RowResult rowResults) {
		this.rowResults.add(rowResults);
	}
}
