package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity()
@Table(name = "cl_ref_commodities")
public class CLRefCommodities extends CodeListSupport {


	@Column(name = "CPC_CODE", unique = false, length = 20, nullable = true)
	protected String cpcCode;

	@Column(name = "HS_CODE", unique = false, length = 20, nullable = true)
	protected String hsCode;

	public String getCpcCode() {
		return cpcCode;
	}

	public void setCpcCode(String cpcCode) {
		this.cpcCode = cpcCode;
	}

	public String getHsCode() {
		return hsCode;
	}

	public void setHsCode(String hsCode) {
		this.hsCode = hsCode;
	}

}
