package com.fairagora.verifik8.v8web.data.domain.dt;

import java.util.Date;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppProdDataEntryType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCommodity;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

@Entity
@Table(name = "dt_farmag_production")
public class DTFarmAgProduction extends V8EntitySupport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_ID")
	protected RegEntity farm;

	@Column(name = "DATE_FROM")
	protected Date dateFrom;

	@Column(name = "DATE_TO")
	protected Date dateTo;

	@ManyToOne
	@JoinColumn(name = "CL_COMMODITIES_ID")
	protected CLRefCommodity commodities;

	@ManyToOne
	@JoinColumn(name = "CL_PROD_DATA_ENTRY_TYPE_ID")
	protected CLAppProdDataEntryType dataEntryType;
	
	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "quantity", column = @Column(name = "PRODUCTION_QUANTITY")) })
	@AssociationOverrides({
			@AssociationOverride(name = "unit", joinColumns = @JoinColumn(name = "CL_PRODUCTION_QUANTITY_UNIT_ID")) })
	protected V8Measure quantity;

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

	public Date getDateFrom() {
		return dateFrom;
	}

	public void setDateFrom(Date dateFrom) {
		this.dateFrom = dateFrom;
	}

	public Date getDateTo() {
		return dateTo;
	}

	public void setDateTo(Date dateTo) {
		this.dateTo = dateTo;
	}

	public CLRefCommodity getCommodities() {
		return commodities;
	}

	public void setCommodities(CLRefCommodity commodities) {
		this.commodities = commodities;
	}

	public V8Measure getQuantity() {
		return quantity;
	}

	public void setQuantity(V8Measure quantity) {
		this.quantity = quantity;
	}

	@Override
	public String getName() {
		return getCommodities().getName() + " " + getQuantity();
	}

	public CLAppProdDataEntryType getDataEntryType() {
		return dataEntryType;
	}

	public void setDataEntryType(CLAppProdDataEntryType dataEntryType) {
		this.dataEntryType = dataEntryType;
	}

}
