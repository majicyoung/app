package com.fairagora.verifik8.v8web.data.domain.dt;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCommodities;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefSpecies;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "dt_farmag_plot_production_cycle")
public class DTFarmPlotProductionCycle extends V8EntitySupport {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_PLOT_ID")
	protected RegEntityFarmPlot regEntityFarmPlot;

	@Column(name = "PRODUCTION_CYCLE_NUMBER")
	protected Integer productionCycleNumber;

	@Column(name = "PRODUCTION_CYCLE_START")
	protected Date productionCycleStart;

	@Column(name = "PRODUCTION_CYCLE_END")
	protected Date productionCycleEnd;

	@Column(name = "SEED_QUANTITY")
	protected Float seedQuantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_SEED_QUANTITY_UNIT_ID")
	protected CLAppQuantityUnit clSeedQuantityUnit;

	@Column(name = "HARVESTED_QUANTITY")
	protected Float harvestedQuantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_HARVESTED_QUANTITY_UNIT_ID")
	protected CLAppQuantityUnit clHarvestedQuantityUnit;

	@Column(name = "USE_FERTILIZERS_IN_CYCLE")
	protected Boolean useFertilizersInCycle;

	@Column(name = "FERTILIZERS_QUANTITY")
	protected Float fertilizersQuantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_FERTILIZERS_QUANTITY_UNIT_ID")
	protected CLAppQuantityUnit clFertilizersQuantityUnit;


	@Column(name = "USE_PESTICIDES_IN_CYCLE")
	protected Boolean usePesticitesInCycle;

	@Column(name = "PESTICIDES_QUANTITY")
	protected Float pesticidesQuantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_PESTICIDES_QUANTITY_UNIT_ID")
	protected CLAppQuantityUnit clPesticidesQuantityUnit;

	@Column(name = "USE_HERBICIDES_IN_CYCLE")
	protected Boolean useHerbicidesInCycle;

	@Column(name = "HERBICIDES_QUANTITY")
	protected Float herbicidesQuantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_HERBICIDES_QUANTITY_UNIT_ID")
	protected CLAppQuantityUnit clHerbicidesQuantityUnit;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_COMMODITIES_ID")
	protected CLRefCommodities clRefCommodities;


	@Override
	public Long getId() {
		return id;
	}

	@Override
	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String getName() {
		return toString();
	}

	public RegEntityFarmPlot getRegEntityFarmPlot() {
		return regEntityFarmPlot;
	}

	public void setRegEntityFarmPlot(RegEntityFarmPlot regEntityFarmPlot) {
		this.regEntityFarmPlot = regEntityFarmPlot;
	}

	public Integer getProductionCycleNumber() {
		return productionCycleNumber;
	}

	public void setProductionCycleNumber(Integer productionCycleNumber) {
		this.productionCycleNumber = productionCycleNumber;
	}

	public Date getProductionCycleStart() {
		return productionCycleStart;
	}

	public void setProductionCycleStart(Date productionCycleStart) {
		this.productionCycleStart = productionCycleStart;
	}

	public Date getProductionCycleEnd() {
		return productionCycleEnd;
	}

	public void setProductionCycleEnd(Date productionCycleEnd) {
		this.productionCycleEnd = productionCycleEnd;
	}

	public Float getSeedQuantity() {
		return seedQuantity;
	}

	public void setSeedQuantity(Float seedQuantity) {
		this.seedQuantity = seedQuantity;
	}

	public CLAppQuantityUnit getClSeedQuantityUnit() {
		return clSeedQuantityUnit;
	}

	public void setClSeedQuantityUnit(CLAppQuantityUnit clSeedQuantityUnit) {
		this.clSeedQuantityUnit = clSeedQuantityUnit;
	}

	public Float getHarvestedQuantity() {
		return harvestedQuantity;
	}

	public void setHarvestedQuantity(Float harvestedQuantity) {
		this.harvestedQuantity = harvestedQuantity;
	}

	public CLAppQuantityUnit getClHarvestedQuantityUnit() {
		return clHarvestedQuantityUnit;
	}

	public void setClHarvestedQuantityUnit(CLAppQuantityUnit clHarvestedQuantityUnit) {
		this.clHarvestedQuantityUnit = clHarvestedQuantityUnit;
	}

	public Boolean getUseFertilizersInCycle() {
		return useFertilizersInCycle;
	}

	public void setUseFertilizersInCycle(Boolean useFertilizersInCycle) {
		this.useFertilizersInCycle = useFertilizersInCycle;
	}

	public Float getFertilizersQuantity() {
		return fertilizersQuantity;
	}

	public void setFertilizersQuantity(Float fertilizersQuantity) {
		this.fertilizersQuantity = fertilizersQuantity;
	}


	public void addFertilizersValue(Float pesticidesQuantity) {
		this.pesticidesQuantity  = (this.pesticidesQuantity  == null) ? pesticidesQuantity : this.pesticidesQuantity  + pesticidesQuantity;
	}

	public void removeFertilizersValue(Float pesticidesQuantity) {
		this.pesticidesQuantity  = (this.pesticidesQuantity  == null) ? pesticidesQuantity : this.pesticidesQuantity  - pesticidesQuantity;
	}


	public CLAppQuantityUnit getClFertilizersQuantityUnit() {
		return clFertilizersQuantityUnit;
	}

	public void setClFertilizersQuantityUnit(CLAppQuantityUnit clFertilizersQuantityUnit) {
		this.clFertilizersQuantityUnit = clFertilizersQuantityUnit;
	}

	public Boolean getUsePesticitesInCycle() {
		return usePesticitesInCycle;
	}

	public void setUsePesticitesInCycle(Boolean usePesticitesInCycle) {
		this.usePesticitesInCycle = usePesticitesInCycle;
	}

	public Float getPesticidesQuantity() {
		return pesticidesQuantity;
	}

	public void setPesticidesQuantity(Float pesticidesQuantity) {
		this.pesticidesQuantity = pesticidesQuantity;
	}

	public void addPesticitesQuantity(Float pesticidesQuantity) {
		this.pesticidesQuantity  = (this.pesticidesQuantity  == null) ? pesticidesQuantity : this.pesticidesQuantity  + pesticidesQuantity;
	}

	public void removePesticitesQuantity(Float pesticidesQuantity) {
		this.pesticidesQuantity  = (this.pesticidesQuantity  == null) ? pesticidesQuantity : this.pesticidesQuantity  - pesticidesQuantity;
	}

	public CLAppQuantityUnit getClPesticidesQuantityUnit() {
		return clPesticidesQuantityUnit;
	}

	public void setClPesticidesQuantityUnit(CLAppQuantityUnit clPesticidesQuantityUnit) {
		this.clPesticidesQuantityUnit = clPesticidesQuantityUnit;
	}

	public Boolean getUseHerbicidesInCycle() {
		return useHerbicidesInCycle;
	}

	public void setUseHerbicidesInCycle(Boolean useHerbicidesInCycle) {
		this.useHerbicidesInCycle = useHerbicidesInCycle;
	}

	public Float getHerbicidesQuantity() {
		return herbicidesQuantity;
	}

	public void setHerbicidesQuantity(Float herbicidesQuantity) {
		this.herbicidesQuantity = herbicidesQuantity;
	}

	public void addHerbicidesQuantity(Float herbicidesQuantity) {
		this.herbicidesQuantity  = (this.herbicidesQuantity  == null) ? herbicidesQuantity : this.herbicidesQuantity  + herbicidesQuantity;
	}

	public void removeHerbicidesQuantity(Float herbicidesQuantity) {
		this.herbicidesQuantity  = (this.herbicidesQuantity  == null) ? herbicidesQuantity : this.herbicidesQuantity  - herbicidesQuantity;
	}

	public CLAppQuantityUnit getClHerbicidesQuantityUnit() {
		return clHerbicidesQuantityUnit;
	}

	public void setClHerbicidesQuantityUnit(CLAppQuantityUnit clHerbicidesQuantityUnit) {
		this.clHerbicidesQuantityUnit = clHerbicidesQuantityUnit;
	}

	public CLRefCommodities getClRefCommodities() {
		return clRefCommodities;
	}

	public void setClRefCommodities(CLRefCommodities clRefCommodities) {
		this.clRefCommodities = clRefCommodities;
	}
}
