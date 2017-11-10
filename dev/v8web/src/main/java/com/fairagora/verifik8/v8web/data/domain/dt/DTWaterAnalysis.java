package com.fairagora.verifik8.v8web.data.domain.dt;

import java.util.Date;

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
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;

@Entity
@Table(name = "dt_water_analysis")
public class DTWaterAnalysis extends V8EntitySupport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_POND_ID")
	protected RegEntityFarmPond pond;

	@Column(name = "ANALYSIS_DATE")
	protected Date analysisDate;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "WATER_ANALYSIS_URL")) })
	protected Attachment analysis;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getAnalysisDate() {
		return analysisDate;
	}

	public void setAnalysisDate(Date analysisDate) {
		this.analysisDate = analysisDate;
	}

	public Attachment getAnalysis() {
		return analysis;
	}

	public void setAnalysis(Attachment analysis) {
		this.analysis = analysis;
	}

	public RegEntityFarmPond getPond() {
		return pond;
	}

	public void setPond(RegEntityFarmPond pond) {
		this.pond = pond;
	}

	@Override
	public String getName() {
		return getPond().getName() + " " + getAnalysisDate();
	}

}
