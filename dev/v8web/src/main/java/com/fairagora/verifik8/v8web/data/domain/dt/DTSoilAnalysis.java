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
import com.fairagora.verifik8.v8web.data.domain.cl.CLSoilAnalysisType;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;

@Entity
@Table(name = "dt_soil_analysis")
public class DTSoilAnalysis extends V8EntitySupport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_PLOT_ID")
	protected RegEntityFarmPlot plot;

	@Column(name = "ANALYSIS_DATE")
	protected Date analysisDate;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_SOIL_ANALYSIS_TYPE_ID")
	protected CLSoilAnalysisType soilAnalysisType;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "SOIL_ANALYSIS_URL")) })
	protected Attachment analysis;

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

	public Date getAnalysisDate() {
		return analysisDate;
	}

	public void setAnalysisDate(Date analysisDate) {
		this.analysisDate = analysisDate;
	}

	public CLSoilAnalysisType getSoilAnalysisType() {
		return soilAnalysisType;
	}

	public void setSoilAnalysisType(CLSoilAnalysisType soilAnalysisType) {
		this.soilAnalysisType = soilAnalysisType;
	}

	public Attachment getAnalysis() {
		return analysis;
	}

	public void setAnalysis(Attachment analysis) {
		this.analysis = analysis;
	}

	@Override
	public String getName() {
		return getPlot().getName() + " " + getAnalysisDate() + " " + getSoilAnalysisType().getName();
	}

}
