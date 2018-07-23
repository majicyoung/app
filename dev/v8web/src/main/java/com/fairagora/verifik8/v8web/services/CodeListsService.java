package com.fairagora.verifik8.v8web.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppCompanyPositionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppContractType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppGetBackFinancialDepositReason;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHazardousTrainingType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHazardousWorkType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHiringRestrictionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHvHeExpensionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppLegalStatus;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppMeasureType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppNoEarlyTerminationContractReason;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentDebtType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentFrequency;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppSalaryDeductionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppSoilAnalysisType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppTilingActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppWorkerEntityDocumentTypes;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPlotActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCommodities;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCountry;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCurrency;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefLanguage;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProductType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefSpecies;
import com.fairagora.verifik8.v8web.data.domain.cl.ClAppTerminationContractReason;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppCompanyPositionTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppContractTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppEntityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppGetBackFinancialDepositReasonRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppHazardousTrainingTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppHazardousWorkTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppHiringRestrictionTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppHvHeExpensionTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppLegalStatusRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppMeasureTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppNoEarlyTerminationContractReasonRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppPaymentDebtTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppPaymentFrequenciesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppSalaryDeductionTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppSoilAnalysisTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppTilingActivityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppWorkerEntityDocumentTypesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLFarmPlotActivityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLFarmPondActivityTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLFarmPondTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefCommoditiesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefCountryRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefCurrencyRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefLanguageRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductTypesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefSpeciesRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.ClAppTerminationContractReasonRepository;

@Service
public class CodeListsService {

	@Autowired
	private CLRefCountryRepository countriesRepository;

	@Autowired
	private CLRefSpeciesRepository speciesRepository;

	@Autowired
	private CLFarmPondTypeRepository pondTypesRepository;

	@Autowired
	private CLRefCommoditiesRepository commoditiesRepository;

	@Autowired
	private CLAppHazardousWorkTypeRepository hazardousWorkTypeRepository;

	@Autowired
	private CLAppHazardousTrainingTypeRepository hazardousTrainingTypeRepository;
	
	@Autowired
	private CLRefProductTypesRepository productTypesRepository;

	@Autowired
	private CLAppQuantityUnitRepository quantityUnitsRepository;

	@Autowired
	private CLAppHvHeExpensionTypeRepository hvHeExpensionTypeRepository;

	@Autowired
	private CLAppCompanyPositionTypeRepository companyPositionTypeRepository;

	@Autowired
	private CLAppHvHeExpensionTypeRepository highValueExpensionTypeRepository;

	@Autowired
	private CLFarmPlotActivityTypeRepository plotActivityTypesRepository;

	@Autowired
	private CLFarmPondActivityTypeRepository pondActivityTypesRepository;

	@Autowired
	private CLRefProductRepository productRepository;

	@Autowired
	private CLRefCurrencyRepository currencyRepository;

	@Autowired
	private CLAppTilingActivityTypeRepository tilingActivityTypeRepository;

	@Autowired
	private CLAppSoilAnalysisTypeRepository soilAnalysisTypeRepository;
	@Autowired
	private CLAppLegalStatusRepository legalStatusRepository;

	@Autowired
	private CLRefLanguageRepository languageRepository;

	@Autowired
	private CLAppContractTypeRepository contractTypesRepository;

	@Autowired
	private CLAppPaymentFrequenciesRepository paymentFrequenciesRepository;

	@Autowired
	private CLAppGetBackFinancialDepositReasonRepository getBackFinancialDepositReasonRepository;

	@Autowired
	private CLAppHiringRestrictionTypeRepository hiringRestrictionTypeRepository;

	@Autowired
	private CLAppNoEarlyTerminationContractReasonRepository noEarlyTerminationContractReasonRepository;

	@Autowired
	private CLAppPaymentDebtTypeRepository paymentDebtTypeRepository;

	@Autowired
	private CLAppSalaryDeductionTypeRepository salaryDeductionTypeRepository;

	@Autowired
	private ClAppTerminationContractReasonRepository terminationContractReasonRepository;

	@Autowired
	private CLAppWorkerEntityDocumentTypesRepository workerEntityDocumentTypesRepository;

	/**
	 * 
	 * @return
	 */
	public List<CLAppHvHeExpensionType> listActiveHighValueExpensionTypes() {
		return highValueExpensionTypeRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * 
	 * @return
	 */
	public List<CLAppCompanyPositionType> listActivePositionTypes() {
		return companyPositionTypeRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * return a sorted list of countries
	 * 
	 * @return
	 */
	public List<CLRefCountry> listActiveCountries() {
		return countriesRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * return a sorted list of active product types
	 * 
	 * @return
	 */
	public List<CLRefProductType> listActiveProductTypes() {
		return productTypesRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * return a sorted list of active quantity unit types
	 * 
	 * @return
	 */
	public List<CLAppQuantityUnit> listActiveQuantityUnit() {
		return quantityUnitsRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * return a sorted list of active hvhe expension types
	 * 
	 * @return
	 */
	public List<CLAppHvHeExpensionType> listHvHeExpensionTypes() {
		return hvHeExpensionTypeRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * 
	 * @param productType
	 * @return
	 */
	public CLRefProductType getProductType(Long productType) {
		return productTypesRepository.findOne(productType);
	}

	/**
	 * 
	 * @return
	 */
	public List<CLAppHazardousWorkType> listActiveHazardousWorkType() {
		return hazardousWorkTypeRepository.findByEnabledTrueOrderByName();
	}

	/**
	 * 
	 * @return
	 */
	public List<CLRefSpecies> listActiveSpecies() {
		return speciesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLFarmPondType> listActivePondTypes() {
		return pondTypesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLRefCommodities> listActiveCommodities() {
		return commoditiesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLFarmPlotActivityType> listActiveActivityTypes() {
		return plotActivityTypesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLFarmPondActivityType> listActivePondActivityTypes() {
		return pondActivityTypesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLRefProduct> listActiveProducts() {
		return productRepository.findByEnabledTrueOrderByName();
	}

	public List<CLRefProduct> listActiveProductsByActivity(Long activityId) {
		return productRepository.getFindByEnabledTrueAndFActivityIdOrderByName(activityId);
	}

	public List<CLRefProduct> listActiveProductsByPlotActivity(Long activityId) {
		return productRepository.getFindByEnabledTrueAndPlotActivityIdOrderByName(activityId);
	}

	public List<CLAppTilingActivityType> listActiveTilingActivityTypes() {
		return tilingActivityTypeRepository.findByEnabledTrueOrderByName();
	}

	@Autowired
	private CLAppMeasureTypeRepository measureTypeRepository;

	public List<CLAppMeasureType> listActiveMeasureTypes() {
		return measureTypeRepository.findByEnabledTrueOrderByName();
	}

	@Autowired
	CLAppEntityTypeRepository entityTypeRepository;

	@Transactional
	public CLAppEntityType findEntityType(String codeInd) {
		for (CLAppEntityType e : entityTypeRepository.findAll())
			if (e.getCode().equals(codeInd))
				return e;
		return null;
	}

	public List<CLAppEntityType> listActiveCompanyEntityTypes() {
		return entityTypeRepository.findByEnabledTrueAndCompanyTrueOrderByName();
	}

	public List<CLAppSoilAnalysisType> listActiveSoilAnalysisType() {
		return soilAnalysisTypeRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppLegalStatus> listActiveLegalStatuses() {
		return legalStatusRepository.findByEnabledTrueOrderByName();
	}

	public List<CLRefLanguage> listActiveLanguages() {
		return languageRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppContractType> listActiveContractTypes() {
		return contractTypesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppPaymentFrequency> listActivePaymentFrequencies() {
		return paymentFrequenciesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLRefCurrency> listActiveCurrencies() {
		return currencyRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppGetBackFinancialDepositReason> listActiveGetBackFinancialDepositReason() {
		return getBackFinancialDepositReasonRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppNoEarlyTerminationContractReason> listActiveNoEarlyTerminationContractReason() {
		return noEarlyTerminationContractReasonRepository.findByEnabledTrueOrderByName();
	}

	public List<ClAppTerminationContractReason> listActiveTerminationContractReason() {
		return terminationContractReasonRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppWorkerEntityDocumentTypes> listActiveWorkerEntityDocumentTypes() {
		return workerEntityDocumentTypesRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppSalaryDeductionType> listActiveSalaryDeductionType() {
		return salaryDeductionTypeRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppPaymentDebtType> listActivePaymentDebtType() {
		return paymentDebtTypeRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppHiringRestrictionType> listActiveHiringRestrictionTypeRepository() {
		return hiringRestrictionTypeRepository.findByEnabledTrueOrderByName();
	}

	public List<CLAppHazardousTrainingType> listHazardousTrainingTypeRepository() {
		return hazardousTrainingTypeRepository.findByEnabledTrueOrderByName();
	}

}
