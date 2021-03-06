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
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppMeasureType;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;

@Entity
@Table(name = "dt_farmaq_pond_measurements")
public class DTFarmPondMeasurement extends V8EntitySupport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_POND_ID")
	protected RegEntityFarmPond pond;

	@Column(name = "MEASURE_DATE")
	protected Date measureDate;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_MEASURE_TYPE_ID")
	protected CLAppMeasureType measureType;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "quantity", column = @Column(name = "MEASURE_VALUE")), })
	@AssociationOverrides({
			@AssociationOverride(name = "unit", joinColumns = @JoinColumn(name = "CL_MEASURE_VALUE_UNIT_ID")) })
	protected V8Measure measure;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public RegEntityFarmPond getPond() {
		return pond;
	}

	public void setPond(RegEntityFarmPond pond) {
		this.pond = pond;
	}

	public Date getMeasureDate() {
		return measureDate;
	}

	public void setMeasureDate(Date measureDate) {
		this.measureDate = measureDate;
	}

	public CLAppMeasureType getMeasureType() {
		return measureType;
	}

	public void setMeasureType(CLAppMeasureType measureType) {
		this.measureType = measureType;
	}

	public V8Measure getMeasure() {
		return measure;
	}

	public void setMeasure(V8Measure measure) {
		this.measure = measure;
	}

	@Override
	public String getName() {
		return toString();
	}

}
