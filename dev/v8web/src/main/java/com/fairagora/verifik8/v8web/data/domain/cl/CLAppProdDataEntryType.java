package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity()
@Table(name = "cl_app_prod_data_entry_types")
public class CLAppProdDataEntryType extends CodeListSupport {

	public boolean isManualEntry() {
		return getId().intValue() == 1;
	}

}
