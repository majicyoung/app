package com.fairagora.verifik8.v8web.data.domain.dt;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;

import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefSpecies;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "dt_farmaq_pond_management")
public class DTFarmPondActivity extends V8EntitySupport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_POND_ID")
	@NotFound(action = NotFoundAction.IGNORE)
	protected RegEntityFarmPond pond;

	@Column(name = "ACTIVITY_START_DATE")
	protected Date activityStartDate;

	@Column(name = "ACTIVITY_END_DATE")
	protected Date activityEndDate;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_POND_ACTIVITY_TYPE_ID")
	protected CLFarmPondActivityType activityType;

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_PRODUCT_ID")
	protected CLRefProduct product;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "quantity", column = @Column(name = "MEASURE_VALUE")), })
	@AssociationOverrides({
			@AssociationOverride(name = "unit", joinColumns = @JoinColumn(name = "CL_MEASURE_VALUE_UNIT_ID")) })
	protected V8Measure measure;

	@Embedded
	@AttributeOverrides({
			@AttributeOverride(name = "quantity", column = @Column(name = "ADDITIONNAL_MEASURE_VALUE")) })
	@AssociationOverrides({
			@AssociationOverride(name = "unit", joinColumns = @JoinColumn(name = "CL_ADDITIONNAL_MEASURE_VALUE_UNIT_ID")) })
	protected V8Measure additionalMeasure;

	@Column(name = "FEED_LOT_NUMBER", length = 216)
	protected String feedLotNumber;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_REF_SPECIES_ID")
	@NotFound(action = NotFoundAction.IGNORE)
	protected CLRefSpecies species;


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

	public Date getActivityStartDate() {
		return activityStartDate;
	}

	public void setActivityStartDate(Date activityStartDate) {
		this.activityStartDate = activityStartDate;
	}

	public Date getActivityEndDate() {
		return activityEndDate;
	}

	public void setActivityEndDate(Date activityEndDate) {
		this.activityEndDate = activityEndDate;
	}

	public CLFarmPondActivityType getActivityType() {
		return activityType;
	}

	public void setActivityType(CLFarmPondActivityType activityType) {
		this.activityType = activityType;
	}

	public CLRefProduct getProduct() {
		return product;
	}

	public void setProduct(CLRefProduct product) {
		this.product = product;
	}

	public V8Measure getMeasure() {
		return measure;
	}

	public void setMeasure(V8Measure measure) {
		this.measure = measure;
	}

	public V8Measure getAdditionalMeasure() {
		return additionalMeasure;
	}

	public void setAdditionalMeasure(V8Measure additionalMeasure) {
		this.additionalMeasure = additionalMeasure;
	}

	public String getFeedLotNumber() {
		return feedLotNumber;
	}

	public void setFeedLotNumber(String feedLotNumber) {
		this.feedLotNumber = feedLotNumber;
	}

	public CLRefSpecies getSpecies() {
		return species;
	}

	public void setSpecies(CLRefSpecies species) {
		this.species = species;
	}

	@Override
	public String getName() {
		return toString();
	}

}
