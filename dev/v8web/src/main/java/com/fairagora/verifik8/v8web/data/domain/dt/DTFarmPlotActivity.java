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
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppTilingActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPlotActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;

@Entity
@Table(name = "dt_farmag_plot_management")
public class DTFarmPlotActivity extends V8EntitySupport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_PLOT_ID")
	protected RegEntityFarmPlot plot;

	@Column(name = "ACTIVITY_START_DATE")
	protected Date activityStartDate;

	@Column(name = "ACTIVITY_END_DATE")
	protected Date activityEndDate;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_PLOT_ACTIVITY_TYPE_ID")
	protected CLFarmPlotActivityType activityType;

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

	@ManyToOne(optional = true)
	@JoinColumn(name = "CL_TILING_ACTIVITY_TYPE_ID")
	protected CLAppTilingActivityType tilingActivityType;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public RegEntityFarmPlot getPlot() {
		return plot;
	}

	public void setPlot(RegEntityFarmPlot plot) {
		this.plot = plot;
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

	public CLFarmPlotActivityType getActivityType() {
		return activityType;
	}

	public void setActivityType(CLFarmPlotActivityType activityType) {
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

	public CLAppTilingActivityType getTilingActivityType() {
		return tilingActivityType;
	}

	public void setTilingActivityType(CLAppTilingActivityType tilingActivityType) {
		this.tilingActivityType = tilingActivityType;
	}

	@Override
	public String getName() {
		return toString();
	}

}
