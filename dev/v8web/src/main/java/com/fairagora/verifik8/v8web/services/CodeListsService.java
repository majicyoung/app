package com.fairagora.verifik8.v8web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCompanyPositionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;
import com.fairagora.verifik8.v8web.data.domain.cl.CLHazardousWorkType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLHvHeExpensionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLPondType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLProductType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLSpecies;
import com.fairagora.verifik8.v8web.data.repo.cl.CLCompanyPositionTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLCountryRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLHazardousWorkTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLHvHeExpensionTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLPoundTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLProductTypesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLSpeciesRepository;

@Service
public class CodeListsService {

	@Autowired
	private CLCountryRepository countriesRepository;

	@Autowired
	private CLSpeciesRepository speciesRepository;

	@Autowired
	private CLPoundTypeRepository pondTypesRepository;

	@Autowired
	private CLHazardousWorkTypeRepository hazardousWorkTypeRepository;

	@Autowired
	private CLProductTypesRepository productTypesRepository;

	@Autowired
	private CLQuantityUnitRepository quantityUnitsRepository;

	@Autowired
	private CLHvHeExpensionTypeRepository hvHeExpensionTypeRepository;

	@Autowired
	private CLCompanyPositionTypeRepository companyPositionTypeRepository;

	@Autowired
	private CLHvHeExpensionTypeRepository highValueExpensionTypeRepository;

	/**
	 * 
	 * @return
	 */
	public List<CLHvHeExpensionType> listActiveHighValueExpensionTypes() {
		return highValueExpensionTypeRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * 
	 * @return
	 */
	public List<CLCompanyPositionType> listActivePositionTypes() {
		return companyPositionTypeRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * return a sorted list of countries
	 * 
	 * @return
	 */
	public List<CLCountry> listActiveCountries() {
		return countriesRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * return a sorted list of active product types
	 * 
	 * @return
	 */
	public List<CLProductType> listActiveProductTypes() {
		return productTypesRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * return a sorted list of active quantity unit types
	 * 
	 * @return
	 */
	public List<CLQuantityUnit> listActiveQuantityUnit() {
		return quantityUnitsRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * return a sorted list of active hvhe expension types
	 * 
	 * @return
	 */
	public List<CLHvHeExpensionType> listHvHeExpensionTypes() {
		return hvHeExpensionTypeRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * 
	 * @param productType
	 * @return
	 */
	public CLProductType getProductType(Long productType) {
		return productTypesRepository.findOne(productType);
	}

	/**
	 * 
	 * @return
	 */
	public List<CLHazardousWorkType> listActiveHazardousWorkType() {
		return hazardousWorkTypeRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * 
	 * @return
	 */
	public List<CLSpecies> listActiveSpecies() {
		return speciesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLPondType> listActivePondTypes() {
		return pondTypesRepository.findByEnabledTrueOrderByName();
	}

}
