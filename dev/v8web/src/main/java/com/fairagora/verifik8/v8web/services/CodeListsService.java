package com.fairagora.verifik8.v8web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCommodities;
import com.fairagora.verifik8.v8web.data.domain.cl.CLCompanyPositionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;
import com.fairagora.verifik8.v8web.data.domain.cl.CLEntityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLHazardousWorkType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLHvHeExpensionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLLanguage;
import com.fairagora.verifik8.v8web.data.domain.cl.CLLegalStatus;
import com.fairagora.verifik8.v8web.data.domain.cl.CLMeasureType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLPlotActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLPondType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLProduct;
import com.fairagora.verifik8.v8web.data.domain.cl.CLProductType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLSoilAnalysisType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLSpecies;
import com.fairagora.verifik8.v8web.data.domain.cl.CLTilingActivityType;
import com.fairagora.verifik8.v8web.data.repo.cl.CLCommoditiesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLCompanyPositionTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLCountryRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLEntityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLHazardousWorkTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLHvHeExpensionTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLLanguageRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLLegalStatusRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLMeasureTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLPlotActivityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLPoundTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLProductRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLProductTypesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLSoilAnalysisTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLSpeciesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLTilingActivityTypeRepository;

@Service
public class CodeListsService {

	@Autowired
	private CLCountryRepository countriesRepository;

	@Autowired
	private CLSpeciesRepository speciesRepository;

	@Autowired
	private CLPoundTypeRepository pondTypesRepository;

	@Autowired
	private CLCommoditiesRepository commoditiesRepository;

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

	@Autowired
	private CLPlotActivityTypeRepository plotActivityTypesRepository;

	@Autowired
	private CLProductRepository productRepository;

	@Autowired
	private CLTilingActivityTypeRepository tilingActivityTypeRepository;

	@Autowired
	private CLSoilAnalysisTypeRepository soilAnalysisTypeRepository;
	@Autowired
	private CLLegalStatusRepository legalStatusRepository;

	@Autowired
	private CLLanguageRepository languageRepository;
	
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

	public List<CLCommodities> listActiveCommodities() {
		return commoditiesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLPlotActivityType> listActiveActivityTypes() {
		return plotActivityTypesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLProduct> listActiveProducts() {
		return productRepository.findByEnabledTrueOrderByName();
	}

	public List<CLTilingActivityType> listActiveTilingActivityTypes() {
		return tilingActivityTypeRepository.findByEnabledTrueOrderByName();
	}

	@Autowired
	private CLMeasureTypeRepository measureTypeRepository;

	public List<CLMeasureType> listActiveMeasureTypes() {
		return measureTypeRepository.findByEnabledTrueOrderByName();
	}

	@Autowired
	CLEntityTypeRepository entityTypeRepository;

	@Transactional
	public CLEntityType findEntityType(String codeInd) {
		for (CLEntityType e : entityTypeRepository.findAll())
			if (e.getCode().equals(codeInd))
				return e;
		return null;
	}

	public List<CLEntityType> listActiveCompanyEntityTypes() {
		return entityTypeRepository.findByEnabledTrueAndCompanyTrueOrderByName();
	}

	public List<CLSoilAnalysisType> listActiveSoilAnalysisType() {
		return soilAnalysisTypeRepository.findByEnabledTrueOrderByName();
	}

	public List<CLLegalStatus> listActiveLegalStatuses() {
		return legalStatusRepository.findByEnabledTrueOrderByName();
	}

	public List<CLLanguage> listActiveLanguages() {
		return languageRepository.findByEnabledTrueOrderByName();
	}

}
