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
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefSpecies;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

@Entity
@Table(name = "reg_entity_farmaq_ponds")
public class RegEntityFarmPond implements V8Entity{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne(optional = false)
	@JoinColumn(name = "REG_ENTITY_FARM_ID")
	protected RegEntity farm;

	@Column(name = "POND_NUMBER", length = 10)
	protected String number;

	@Column(name = "POND_DESCRIPTION", length = 255)
	protected String description;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_POND_TYPE_ID")
	protected CLFarmPondType type;

	@ManyToOne(optional = false)
	@JoinColumn(name = "CL_SPECIES_ID")
	protected CLRefSpecies species;

	@Embedded
	@AttributeOverrides({ 
		@AttributeOverride(name = "quantity", column = @Column(name = "POND_VOLUME")), })
		@AssociationOverrides({			@AssociationOverride(name = "unit", joinColumns = @JoinColumn(name = "CL_POND_VOLUME_UNIT_ID")) })
	protected V8Measure volume;

	@Column(name = "COMMENT", length = 512)
	protected String comment;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public RegEntity getFarm() {
		return farm;
	}

	public void setFarm(RegEntity farmId) {
		this.farm = farmId;
	}

	public CLFarmPondType getType() {
		return type;
	}

	public void setType(CLFarmPondType type) {
		this.type = type;
	}

	public CLRefSpecies getSpecies() {
		return species;
	}

	public void setSpecies(CLRefSpecies species) {
		this.species = species;
	}

	public V8Measure getVolume() {
		return volume;
	}

	public void setVolume(V8Measure volume) {
		this.volume = volume;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
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

	@Override
	public String getName() {
		return getNumber();
	}

}
