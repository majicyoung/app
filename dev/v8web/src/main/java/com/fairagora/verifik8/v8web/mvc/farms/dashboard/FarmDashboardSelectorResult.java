package com.fairagora.verifik8.v8web.mvc.farms.dashboard;

public class FarmDashboardSelectorResult<T> {

	private T results;

	public FarmDashboardSelectorResult(T results) {
		this.results = results;
	}

	public T getResults() {
		return results;
	}

	public void setResults(T results) {
		this.results = results;
	}
}
