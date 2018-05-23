package com.fairagora.verifik8.v8web.data.domain.commons.compliance;

import java.util.ArrayList;
import java.util.List;

public class Document {

	private List<Row> rows;

	public Document() {
		rows = new ArrayList<>();
	}

	public Document(List<Row> rows) {
		this.rows = rows;
	}

	public List<Row> getRows() {
		return rows;
	}

	public void setRows(List<Row> rows) {
		this.rows = rows;
	}

	public void setRow(Row  row){
		this.rows.add(row);
	}

	public Row getRow(int index){
		return this.rows.get(index);
	}
}
