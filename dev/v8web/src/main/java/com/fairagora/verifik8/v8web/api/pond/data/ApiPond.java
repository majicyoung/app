package com.fairagora.verifik8.v8web.api.pond.data;

import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;

public class ApiPond {

	protected Long id;
	protected String description;
	protected Long farm;
	protected Long species;
	protected Long type;
	protected V8Measure size;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getFarm() {
		return farm;
	}

	public void setFarm(Long farm) {
		this.farm = farm;
	}

	public Long getSpecies() {
		return species;
	}

	public void setSpecies(Long species) {
		this.species = species;
	}

	public Long getType() {
		return type;
	}

	public void setType(Long type) {
		this.type = type;
	}

	public V8Measure getSize() {
		return size;
	}

	public void setSize(V8Measure size) {
		this.size = size;
	}

}
