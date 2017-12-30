package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProductType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

@Entity
@Table(name = "reg_entity_farm_providers")
public class RegEntityFarmSupplierAssignment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_ID")
	protected RegEntity farm;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_SUPPLIER_ID")
	protected RegEntity supplier;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_PRODUCT_TYPES_ID")
	protected CLRefProductType productType;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public RegEntity getFarm() {
		return farm;
	}

	public void setFarm(RegEntity farm) {
		this.farm = farm;
	}

	public RegEntity getSupplier() {
		return supplier;
	}

	public void setSupplier(RegEntity supplier) {
		this.supplier = supplier;
	}

	public CLRefProductType getProductType() {
		return productType;
	}

	public void setProductType(CLRefProductType productType) {
		this.productType = productType;
	}

}
