package com.fairagora.verifik8.v8web.data.domain.dt;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefSpecies;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "dt_farmaq_pond_production_cycle")
public class DTFarmPondProductionCycle  extends V8EntitySupport {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_POND_ID")
	@OnDelete(action = OnDeleteAction.NO_ACTION)
	protected RegEntityFarmPond regEntityFarmPond;

	@Column(name = "PRODUCTION_CYCLE_NUMBER")
	protected Integer productionCycleNumber;

	@Column(name = "PRODUCTION_CYCLE_START")
	protected Date productionCycleStart;

	@Column(name = "PRODUCTION_CYCLE_END")
	protected Date productionCycleEnd;

	@Column(name = "FEEDING_VALUE")
	protected Float feedingValue;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_FEEDING_VALUE_UNIT_ID")
	@OnDelete(action = OnDeleteAction.NO_ACTION)
	protected CLAppQuantityUnit clFeedingValueUnit;

	@Column(name = "SEED_QUANTITY")
	protected Float seedQuantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_SEED_QUANTITY_UNIT_ID")
	@OnDelete(action = OnDeleteAction.NO_ACTION)
	protected CLAppQuantityUnit clSeedQuantityUnit;

	@Column(name = "HARVESTED_QUANTITY")
	protected Float harvestedQuantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_HARVESTED_QUANTITY_UNIT_ID")
	@OnDelete(action = OnDeleteAction.NO_ACTION)
	protected CLAppQuantityUnit clHarvestedQuantityUnit;

	@Column(name = "USE_ANTIBIO_IN_CYCLE")
	protected Boolean useAntibioInCycle;

	@Column(name = "ANTIBIO_QUANTITY")
	protected Float antibioQuantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_ANTIBIO_QUANTITY_UNIT_ID")
	@OnDelete(action = OnDeleteAction.NO_ACTION)
	protected CLAppQuantityUnit clAntibioQuantityUnit;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_REF_SPECIES_ID")
	@OnDelete(action = OnDeleteAction.NO_ACTION)
	protected CLRefSpecies clRefSpecies;


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

	public RegEntityFarmPond getRegEntityFarmPond() {
		return regEntityFarmPond;
	}

	public void setRegEntityFarmPond(RegEntityFarmPond regEntityFarmPond) {
		this.regEntityFarmPond = regEntityFarmPond;
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

	public Float getFeedingValue() {
		return feedingValue;
	}

	public void setFeedingValue(Float feedingValue) {
		this.feedingValue = feedingValue;
	}

	public void addFeedingValue(Float feedingValue) {
		this.feedingValue  = (this.feedingValue  == null) ? feedingValue : this.feedingValue  + feedingValue;
	}

	public void removeFeedingValue(Float feedingValue) {
		this.feedingValue  = (this.feedingValue  == null) ? feedingValue : this.feedingValue  - feedingValue;
	}

	public CLAppQuantityUnit getClFeedingValueUnit() {
		return clFeedingValueUnit;
	}

	public void setClFeedingValueUnit(CLAppQuantityUnit clFeedingValueUnit) {
		this.clFeedingValueUnit = clFeedingValueUnit;
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

	public Boolean getUseAntibioInCycle() {
		return useAntibioInCycle;
	}

	public void setUseAntibioInCycle(Boolean useAntibioInCycle) {
		this.useAntibioInCycle = useAntibioInCycle;
	}

	public Float getAntibioQuantity() {
		return antibioQuantity;
	}

	public void setAntibioQuantity(Float antibioQuantity) {
		this.antibioQuantity = antibioQuantity;
	}

	public void addAntibioQuantity(Float antibioQuantity) {
		this.antibioQuantity  = (this.antibioQuantity  == null) ? antibioQuantity : this.antibioQuantity  + antibioQuantity;

	}

	public void removeAntibioQuantity(Float antibioQuantity) {
		this.antibioQuantity  = (this.antibioQuantity  == null) ? antibioQuantity : this.antibioQuantity  - antibioQuantity;

	}

	public CLAppQuantityUnit getClAntibioQuantityUnit() {
		return clAntibioQuantityUnit;
	}

	public void setClAntibioQuantityUnit(CLAppQuantityUnit clAntibioQuantityUnit) {
		this.clAntibioQuantityUnit = clAntibioQuantityUnit;
	}

	public CLRefSpecies getClRefSpecies() {
		return clRefSpecies;
	}

	public void setClRefSpecies(CLRefSpecies clRefSpecies) {
		this.clRefSpecies = clRefSpecies;
	}
}
