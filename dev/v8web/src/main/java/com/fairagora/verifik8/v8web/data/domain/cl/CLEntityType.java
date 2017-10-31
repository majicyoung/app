package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "cl_entity_types")
public class CLEntityType extends CodeListSupport {

	public static final String CODE_IND = "IND";
	public static final String CODE_COOP = "COOP";
	public static final String CODE_FARM = "FARM";
	public static final String CODE_COM = "COM";
}
