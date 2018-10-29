package com.fairagora.verifik8.v8web.data.domain.reg.farm;

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

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCommodity;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

@Entity
@Table(name = "reg_entity_farmag_plots")
public class RegEntityFarmPlot implements V8Entity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_ID")
	protected RegEntity farm;

	@Column(name = "PLOT_NUMBER", length = 10)
	protected String number;

	@Column(name = "PLOT_DESCRIPTION", length = 255)
	protected String description;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_COMMODITIES_ID")
	protected CLRefCommodity commodities;

	@Column(name = "IS_IRRIGATED", length = 255)
	protected boolean irrigated;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "quantity", column = @Column(name = "PLOT_SIZE")), })
	@AssociationOverrides({
			@AssociationOverride(name = "unit", joinColumns = @JoinColumn(name = "CL_PLOT_SIZE_UNIT_ID")) })
	protected V8Measure size;

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

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public CLRefCommodity getCommodities() {
		return commodities;
	}

	public void setCommodities(CLRefCommodity commodities) {
		this.commodities = commodities;
	}

	public boolean isIrrigated() {
		return irrigated;
	}

	public void setIrrigated(boolean irrigated) {
		this.irrigated = irrigated;
	}

	public V8Measure getSize() {
		return size;
	}

	public void setSize(V8Measure size) {
		this.size = size;
	}

	@Override
	public String getName() {
		return getNumber();
	}

}
