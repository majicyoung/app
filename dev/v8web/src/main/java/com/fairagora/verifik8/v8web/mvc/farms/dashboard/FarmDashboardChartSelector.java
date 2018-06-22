package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

public class FarmDashboardChartSelector {

	private Long id;
	private String text;
	private Boolean selected;

	public FarmDashboardChartSelector(Long id, String text) {
		this.id = id;
		this.text = text;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Boolean getSelected() {
		return true;
	}

	public void setSelected(Boolean selected) {
		this.selected = selected;
	}
}
