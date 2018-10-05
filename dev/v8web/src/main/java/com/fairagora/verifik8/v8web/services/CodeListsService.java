package com.fairagora.verifik8.v8web.services;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.cl.*;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;
import com.fairagora.verifik8.v8web.data.repo.cl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CodeListsService {

    /*****  cl_app *****/

    @Autowired
    private CLColumnRepository columnRepository;

    @Autowired
    private CLAppAdministrativeCharacteristicTypeRepository appAdministrativeCharacteristicTypeRepository;

    @Autowired
    private CLAppCompanyPositionTypeRepository appCompanyPositionTypeRepository;

    @Autowired
    private CLAppContractTypeRepository appContractTypesRepository;

    @Autowired
    private CLAppDebtTypeRepository appDebtTypeRepository;

    @Autowired
    private CLAppDeclarationSourcesTypeRepository appDeclarationSourcesTypeRepository;

    @Autowired
    private CLAppDeductionSalaryTypeRepository appDeductionSalaryTypeRepository;

    @Autowired
    private CLAppEnergyTypeRepository appEnergyTypeRepository;

    @Autowired
    private CLAppEngineRoleRepository appEngineRoleRepository;

    @Autowired
    private CLAppEngineTypeRepository appEngineTypeRepository;

    @Autowired
    private CLAppEntityDocumentTypesRepository appEntityDocumentTypesRepository;

    @Autowired
    private CLAppEntityTypeRepository appEntityTypeRepository;

    @Autowired
    private CLAppFreshWaterSypplyTypeRepository appFreshWaterSypplyTypeRepository;

    @Autowired
    private CLAppGetBackFinancialDepositReasonRepository appGetBackFinancialDepositReasonRepository;

    @Autowired
    private CLAppHazardousTrainingTypeRepository appHazardousTrainingTypeRepository;

    @Autowired
    private CLAppHazardousWorkTypeRepository appHazardousWorkTypeRepository;

    @Autowired
    private CLAppHiringRestrictionTypeRepository appHiringRestrictionTypeRepository;

    @Autowired
    private CLAppHullTypeRepository appHullTypeRepository;

    @Autowired
    private CLAppHvHeExpensionTypeRepository appHvHeExpensionTypeRepository;

    @Autowired
    private CLAppLegalStatusRepository appLegalStatusRepository;

    @Autowired
    private CLAppLicenseTypeRepository appLicenseTypeRepository;

    @Autowired
    private CLAppLocationTypeRepository appLocationTypeRepository;

    @Autowired
    private CLAppLocationRepository appLocationRepository;

    @Autowired
    private CLAppMeasureTypeRepository appMeasureTypeRepository;

    @Autowired
    private CLAppNoEarlyTerminationContractReasonRepository appNoEarlyTerminationContractReasonRepository;

    @Autowired
    private CLAppPaymentDebtTypeRepository appPaymentDebtTypeRepository;

    @Autowired
    private CLAppPaymentFrequencyRepository appPaymentFrequencyRepository;

    @Autowired
    private CLAppPowerUnitRepository appPowerUnitRepository;

    @Autowired
    private CLAppProdDataEntryTypeRepository appProdDataEntryTypeRepository;

    @Autowired
    private CLAppPropulsionTypeRepository appPropulsionTypeRepository;

    @Autowired
    private CLAppQuantityUnitTypeRepository appQuantityUnitTypeRepository;

    @Autowired
    private CLAppQuantityUnitRepository appQuantityUnitRepository;

    @Autowired
    private CLAppQuestionnaireAnswerRepository appQuestionnaireAnswerRepository;

    @Autowired
    private CLAppSoilAnalysisTypeRepository appSoilAnalysisTypeRepository;

    @Autowired
    private CLAppStaffDeclarationTypeRepository appStaffDeclarationTypeRepository;

    @Autowired
    private CLAppTerminationContractReasonRepository appTerminationContractReasonRepository;

    @Autowired
    private CLAppTilingActivityTypeRepository appTilingActivityTypeRepository;

    @Autowired
    private CLAppVesselCharacteristicRepository appVesselCharacteristicRepository;

    @Autowired
    private CLAppVesselEquipmentTypeRepository appVesselEquipmentTypeRepository;

    @Autowired
    private CLAppVesselHistoricalCharacteristicTypeRepository appVesselHistoricalCharacteristicTypeRepository;

    @Autowired
    private CLAppVesselOperationalStatusRepository appVesselOperationalStatusRepository;

    @Autowired
    private CLAppWaterSupplyTypeRepository appWaterSupplyTypeRepository;

    /*****  cl_farm *****/

    @Autowired
    private CLFarmBuildingTypeRepository farmBuildingTypeRepository;

    @Autowired
    private CLFarmPlotActivityTypeRepository farmPlotActivityTypesRepository;

    @Autowired
    private CLFarmPondActivityTypeRepository farmPondActivityTypesRepository;

    @Autowired
    private CLFarmPondTypeRepository farmPondTypesRepository;

    @Autowired
    private CLFarmProductionTypeRepository farmProductionTypeRepository;

    @Autowired
    private CLFarmTypeRepository farmTypeRepository;

    /***** cl_fish *****/

    @Autowired
    private CLFishFishingTypeRepository fishFishingTypeRepository;

    @Autowired
    private CLFishFishingZoneRepository fishFishingZoneRepository;

    /*****  cl_ref *****/

    @Autowired
    private CLRefAdminLevel1Repository refAdminLevel1Repository;

    @Autowired
    private CLRefAdminLevel2Repository refAdminLevel2Repository;

    @Autowired
    private CLRefCommodityRepository refCommodityRepository;

    @Autowired
    private CLRefCountryRepository refCountryRepository;

    @Autowired
    private CLRefCurrencyRepository refCurrencyRepository;

    @Autowired
    private CLRefDeclarationSourceRepository refDeclarationSourceRepository;

    @Autowired
    private CLRefGearCharacteristicRepository refGearCharacteristicRepository;

    @Autowired
    private CLRefGearRepository refGearRepository;

    @Autowired
    private CLRefLandingSiteRepository refLandingSiteRepository;

    @Autowired
    private CLRefLanguageRepository refLanguageRepository;

    @Autowired
    private CLRefLanguageCountryRepository refLanguageCountryRepository;

    @Autowired
    private CLRefProductTypesRepository refProductTypesRepository;

    @Autowired
    private CLRefProductRepository refProductRepository;

    @Autowired
    private CLRefRegionRepository refRegionRepository;

    @Autowired
    private CLRefSpeciesRepository refSpeciesRepository;

    @Autowired
    private CLRefVesselTypeRepository refVesselTypeRepository;


    /***** cl_app - gets *****/

    public CLAppAdministrativeCharacteristicType getAppAdministrativeCharacteristicType(long id) {
        return appAdministrativeCharacteristicTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppAdministrativeCharacteristicTypes() {
        return appAdministrativeCharacteristicTypeRepository.findAll();
    }

    public CLAppCompanyPositionType getAppCompanyPositionType(long id) {
        return appCompanyPositionTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppCompanyPositionTypes() {
        return appCompanyPositionTypeRepository.findAll();
    }

    public List<CLAppCompanyPositionType> listActivePositionTypes() {
        return appCompanyPositionTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppContractType getAppContractType(long id) {
        return appContractTypesRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppContractTypes() {
        return appContractTypesRepository.findAll();
    }

    public List<CLAppContractType> listActiveContractTypes() {
        return appContractTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLAppDebtType getAppDebtType(long id) {
        return appDebtTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppDebtTypes() {
        return appDebtTypeRepository.findAll();
    }

    public CLAppDeclarationSourcesType getAppDeclarationSourcesType(long id) {
        return appDeclarationSourcesTypeRepository.findOne(id);
    }

    public CLAppDeductionSalaryType getAppDeductionSalaryType(long id) {
        return appDeductionSalaryTypeRepository.findOne(id);
    }

    public List<CLAppDeductionSalaryType> listActiveSalaryDeductionType() {
        return appDeductionSalaryTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppEnergyType getAppEnergyType(long id) {
        return appEnergyTypeRepository.findOne(id);
    }

    public CLAppEngineRole getAppEngineRole(long id) {
        return appEngineRoleRepository.findOne(id);
    }

    public CLAppEngineType getAppEngineType(long id) {
        return appEngineTypeRepository.findOne(id);
    }

    public CLAppEntityDocumentTypes getAppEntityDocumentType(long id) {
        return appEntityDocumentTypesRepository.findOne(id);
    }

    public List<CLAppEntityDocumentTypes> listActiveWorkerEntityDocumentTypes() {
        return appEntityDocumentTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLAppEntityType getAppEntityType(long id) {
        return appEntityTypeRepository.findOne(id);
    }

    @Transactional
    public CLAppEntityType findEntityType(String codeInd) {
        for (CLAppEntityType e : appEntityTypeRepository.findAll())
            if (e.getCode().equals(codeInd))
                return e;
        return null;
    }

    public List<CLAppEntityType> listActiveCompanyEntityTypes() {
        return appEntityTypeRepository.findByEnabledTrueAndCompanyTrueOrderByName();
    }

    public CLAppFreshWaterSypplyType getAppFreshWaterSypplyType(long id) {
        return appFreshWaterSypplyTypeRepository.findOne(id);
    }

    public CLAppGetBackFinancialDepositReason getAppGetBackFinancialDepositReason(long id) {
        return appGetBackFinancialDepositReasonRepository.findOne(id);
    }

    public List<CLAppGetBackFinancialDepositReason> listActiveGetBackFinancialDepositReason() {
        return appGetBackFinancialDepositReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHazardousTrainingType getAppHazardousTrainingType(long id) {
        return appHazardousTrainingTypeRepository.findOne(id);
    }

    public List<CLAppHazardousTrainingType> listHazardousTrainingTypeRepository() {
        return appHazardousTrainingTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHazardousWorkType getAppHazardousWorkType(long id) {
        return appHazardousWorkTypeRepository.findOne(id);
    }

    public List<CLAppHazardousWorkType> listActiveHazardousWorkType() {
        return appHazardousWorkTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHiringRestrictionType getAppHiringRestrictionType(long id) {
        return appHiringRestrictionTypeRepository.findOne(id);
    }

    public List<CLAppHiringRestrictionType> listActiveHiringRestrictionTypeRepository() {
        return appHiringRestrictionTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHullType getAppHullType(long id) {
        return appHullTypeRepository.findOne(id);
    }

    public CLAppHvHeExpensionType getAppHvHeExpensionType(long id) {
        return appHvHeExpensionTypeRepository.findOne(id);
    }

    public List<CLAppHvHeExpensionType> listHvHeExpensionTypes() {
        return appHvHeExpensionTypeRepository.findByEnabledTrueOrderByName();
    }

    public List<CLAppHvHeExpensionType> listActiveHighValueExpensionTypes() {
        return appHvHeExpensionTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppLegalStatus getAppLegalStatus(long id) {
        return appLegalStatusRepository.findOne(id);
    }

    public List<CLAppLegalStatus> listActiveLegalStatuses() {
        return appLegalStatusRepository.findByEnabledTrueOrderByName();
    }

    public CLAppLicenseType getAppLicenceType(long id) {
        return appLicenseTypeRepository.findOne(id);
    }

    public CLAppLocationType getAppLocationType(long id) {
        return appLocationTypeRepository.findOne(id);
    }

    public CLAppLocation getAppLocation(long id) {
        return appLocationRepository.findOne(id);
    }

    public CLAppMeasureType getAppMeasureType(long id) {
        return appMeasureTypeRepository.findOne(id);
    }

    public List<CLAppMeasureType> listActiveMeasureTypes() {
        return appMeasureTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppNoEarlyTerminationContractReason getAppNoEarlyTerminationContractReason(long id) {
        return appNoEarlyTerminationContractReasonRepository.findOne(id);
    }

    public List<CLAppNoEarlyTerminationContractReason> listActiveNoEarlyTerminationContractReason() {
        return appNoEarlyTerminationContractReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPaymentDebtType getAppPaymentDebtType(long id) {
        return appPaymentDebtTypeRepository.findOne(id);
    }

    public List<CLAppPaymentDebtType> listActivePaymentDebtType() {
        return appPaymentDebtTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPaymentFrequency getAppPaymentFrequency(long id) {
        return appPaymentFrequencyRepository.findOne(id);
    }

    public List<CLAppPaymentFrequency> listActivePaymentFrequencies() {
        return appPaymentFrequencyRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPowerUnit getAppPowerUnit(long id) {
        return appPowerUnitRepository.findOne(id);
    }

    public CLAppProdDataEntryType getAppProDataEntryType(long id) {
        return appProdDataEntryTypeRepository.findOne(id);
    }

    public CLAppPropulsionType getAppPropulsionTypeRepository(long id) {
        return appPropulsionTypeRepository.findOne(id);
    }

    public CLAppQuantityUnitType getAppQuantityUnitType(long id) {
        return appQuantityUnitTypeRepository.findOne(id);
    }

    public CLAppQuantityUnit getAppQuantityUnit(long id) {
        return appQuantityUnitRepository.findOne(id);
    }

    public List<CLAppQuantityUnit> listActiveQuantityUnit() {
        return appQuantityUnitRepository.findByEnabledTrueOrderByName();
    }

    public CLAppQuestionnaireAnswer getAppQuestionnaireAnswer(long id) {
        return appQuestionnaireAnswerRepository.findOne(id);
    }

    public CLAppSoilAnalysisType getAppSoilAnalysisType(long id) {
        return appSoilAnalysisTypeRepository.findOne(id);
    }

    public List<CLAppSoilAnalysisType> listActiveSoilAnalysisType() {
        return appSoilAnalysisTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppStaffDeclarationType getAppStaffDeclarationType(long id) {
        return appStaffDeclarationTypeRepository.findOne(id);
    }

    public CLAppTerminationContractReason getAppTerminationContractReason(long id) {
        return appTerminationContractReasonRepository.findOne(id);
    }

    public List<CLAppTerminationContractReason> listActiveTerminationContractReason() {
        return appTerminationContractReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppTilingActivityType getAppTilingActivityType(long id) {
        return appTilingActivityTypeRepository.findOne(id);
    }

    public List<CLAppTilingActivityType> listActiveTilingActivityTypes() {
        return appTilingActivityTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppVesselCharacteristic getAppVesselCharacteristic(long id) {
        return appVesselCharacteristicRepository.findOne(id);
    }

    public CLAppVesselEquipmentType getAppVesselEquipmentType(long id) {
        return appVesselEquipmentTypeRepository.findOne(id);
    }

    public CLAppVesselHistoricalCharacteristicType getAppVesselHistoricalCharacteristicType(long id) {
        return appVesselHistoricalCharacteristicTypeRepository.findOne(id);
    }

    public CLAppVesselOperationalStatus getAppVesselOperationalStatus(long id) {
        return appVesselOperationalStatusRepository.findOne(id);
    }

    public CLAppWaterSupplyType getAppWaterSupplyType(long id) {
        return appWaterSupplyTypeRepository.findOne(id);
    }

    /***** cl_farm - gets *****/

    public CLFarmBuildingType getFarmBuildingType(long id) {
        return farmBuildingTypeRepository.findOne(id);
    }

    public CLFarmPlotActivityType getFarmPlotActivityType(long id) {
        return farmPlotActivityTypesRepository.findOne(id);
    }

    public List<CLFarmPlotActivityType> listActiveActivityTypes() {
        return farmPlotActivityTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmPondActivityType getFarmPondActivityType(long id) {
        return farmPondActivityTypesRepository.findOne(id);
    }

    public List<CLFarmPondActivityType> listActivePondActivityTypes() {
        return farmPondActivityTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmPondType getFarmPondType(long id) {
        return farmPondTypesRepository.findOne(id);
    }

    public List<CLFarmPondType> listActivePondTypes() {
        return farmPondTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmProductionType getFarmProductionType(long id) {
        return farmProductionTypeRepository.findOne(id);
    }

    public CLFarmType getFarmType(long id) {
        return farmTypeRepository.findOne(id);
    }

    /***** cl_fish - gets *****/

    public CLFishFishingType getFishFishingType(long id) {
        return fishFishingTypeRepository.findOne(id);
    }

    public CLFishFishingZone getFishFishingZone(long id) {
        return fishFishingZoneRepository.findOne(id);
    }

    /***** cl_ref - gets *****/

    public CLRefAdminLevel1 getRefAdminLevel1(long id) {
        return refAdminLevel1Repository.findOne(id);
    }

    public CLRefAdminLevel2 getRefAdminLevel2(long id) {
        return refAdminLevel2Repository.findOne(id);
    }

    public CLRefCommodity getRefCommodity(long id) {
        return refCommodityRepository.findOne(id);
    }

    public List<CLRefCommodity> listActiveCommodities() {
        return refCommodityRepository.findByEnabledTrueOrderByName();
    }

    public CLRefCountry getRefCountry(long id) {
        return refCountryRepository.findOne(id);
    }

    public List<CLRefCountry> listActiveCountries() {
        return refCountryRepository.findByEnabledTrueOrderByName();
    }

    public CLRefCurrency getRefCurrency(long id) {
        return refCurrencyRepository.findOne(id);
    }

    public List<CLRefCurrency> listActiveCurrencies() {
        return refCurrencyRepository.findByEnabledTrueOrderByName();
    }

    public CLRefDeclarationSource getRefDeclarationSource(long id) {
        return refDeclarationSourceRepository.findOne(id);
    }

    public CLRefGearCharacteristic getRefGearCharacteristic(long id) {
        return refGearCharacteristicRepository.findOne(id);
    }

    public CLRefGear getRefGear(long id) {
        return refGearRepository.findOne(id);
    }

    public CLRefLandingSite getRefLandingSite(long id) {
        return refLandingSiteRepository.findOne(id);
    }

    public CLRefLanguage getRefLanguage(long id) {
        return refLanguageRepository.findOne(id);
    }

    public List<CLRefLanguage> listActiveLanguages() {
        return refLanguageRepository.findByEnabledTrueOrderByName();
    }

    public CLRefLanguageCountry getRefLanguageCountry(long id) {
        return refLanguageCountryRepository.findOne(id);
    }

    public CLRefProductType getRefProductType(long id) {
        return refProductTypesRepository.findOne(id);
    }

    public List<CLRefProductType> listActiveProductTypes() {
        return refProductTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLRefProduct getRefProduct(long id) {
        return refProductRepository.findOne(id);
    }

    public List<CLRefProduct> listActiveProducts() {
        return refProductRepository.findByEnabledTrueOrderByName();
    }

    public List<CLRefProduct> listActiveProductsByActivity(Long activityId) {
        return refProductRepository.getFindByEnabledTrueAndFActivityIdOrderByName(activityId);
    }

    public List<CLRefProduct> listActiveProductsByPlotActivity(Long activityId) {
        return refProductRepository.getFindByEnabledTrueAndPlotActivityIdOrderByName(activityId);
    }


    public CLRefRegion getRefRegion(long id) {
        return refRegionRepository.findOne(id);
    }

    public CLRefSpecies getRefSpechie(long id) {
        return refSpeciesRepository.findOne(id);
    }

    public List<CLRefSpecies> listActiveSpecies() {
        return refSpeciesRepository.findByEnabledTrueOrderByName();
    }

    public CLRefVesselType getRefVesselType(long id) {
        return refVesselTypeRepository.findOne(id);
    }

    public CLColumn getColumn(String tableName) {
        return columnRepository.findOne(tableName);
    }

    public List<? extends BaseCodeListSupport> gets(String tableName) {
        switch (tableName) {
            case "cl_app_administrative_characteristic_types":
                return getAppAdministrativeCharacteristicTypes();
            case "cl_app_company_position_types":
                return getAppCompanyPositionTypes();
            case "cl_app_contract_types":
                return getAppContractTypes();
            case "cl_app_debt_types":
                return getAppDebtTypes();
            default:
                return null;
        }
    }

    public BaseCodeListSupport gets(String tableName, long id) {
        switch (tableName) {
            case "cl_app_administrative_characteristic_types":
                return getAppAdministrativeCharacteristicType(id);
            case "cl_app_company_position_types":
                return getAppCompanyPositionType(id);
            case "cl_app_contract_types":
                return getAppContractType(id);
            case "cl_app_debt_types":
                return getAppDebtType(id);
            case "cl_app_declaration_sources_types":
                return getAppDeclarationSourcesType(id);
            case "cl_app_deduction_salary_types":
                return getAppDeductionSalaryType(id);
            case "cl_app_energy_types":
                return getAppEnergyType(id);
            case "cl_app_engine_roles":
                return getAppEngineRole(id);
            case "cl_app_engine_types":
                return getAppEngineType(id);
            case "cl_app_entity_document_types":
                return getAppEntityDocumentType(id);
            case "cl_app_entity_types":
                return getAppEntityType(id);
            case "cl_app_fresh_water_sypply_types":
                return getAppFreshWaterSypplyType(id);
            case "cl_app_get_back_financial_deposit_reasons":
                return getAppGetBackFinancialDepositReason(id);
            case "cl_app_hazardous_training_types":
                return getAppHazardousTrainingType(id);
            case "cl_app_hazardous_work_type":
                return getAppHazardousWorkType(id);
            case "cl_app_hiring_restriction_types":
                return getAppHiringRestrictionType(id);
            case "cl_app_hull_types":
                return getAppHullType(id);
            case "cl_app_hvhe_expension_types":
                return getAppHvHeExpensionType(id);
            case "cl_app_legal_status":
                return getAppLegalStatus(id);
            case "cl_app_license_types":
                return getAppLicenceType(id);
            case "cl_app_location_types":
                return getAppLocationType(id);
            case "cl_app_locations":
                return getAppLocation(id);
            case "cl_app_measure_types":
                return getAppMeasureType(id);
            case "cl_app_no_early_termination_contract_reasons":
                return getAppNoEarlyTerminationContractReason(id);
            case "cl_app_payment_debt_types":
                return getAppPaymentDebtType(id);
            case "cl_app_payment_frequencies":
                return getAppPaymentFrequency(id);
            case "cl_app_power_units":
                return getAppPowerUnit(id);
            case "cl_app_prod_data_entry_types":
                return getAppProDataEntryType(id);
            case "cl_app_propulsion_types":
                return getAppPropulsionTypeRepository(id);
            case "cl_app_quantity_unit_types":
                return getAppQuantityUnitType(id);
            case "cl_app_quantity_units":
                return getAppQuantityUnit(id);
            case "cl_app_questionnaire_answers":
                return getAppQuestionnaireAnswer(id);
            case "cl_app_soil_analysis_types":
                return getAppSoilAnalysisType(id);
            case "cl_app_staff_declaration_types":
                return getAppStaffDeclarationType(id);
            case "cl_app_termination_contract_reasons":
                return getAppTerminationContractReason(id);
            case "cl_app_tiling_activity_types":
                return getAppTilingActivityType(id);
            case "cl_app_vessel_characteristics":
                return getAppVesselCharacteristic(id);
            case "cl_app_vessel_equipment_types":
                return getAppVesselEquipmentType(id);
            case "cl_app_vessel_historical_characteristic_types":
                return getAppVesselHistoricalCharacteristicType(id);
            case "cl_app_vessel_operational_status":
                return getAppVesselOperationalStatus(id);
            case "cl_app_water_supply_types":
                return getAppWaterSupplyType(id);
            case "cl_farm_building_types":
                return getFarmBuildingType(id);
            case "cl_farm_plot_activity_types":
                return getFarmPlotActivityType(id);
            case "cl_farm_pond_activity_types":
                return getFarmPondActivityType(id);
            case "cl_farm_pond_types":
                return getFarmPondType(id);
            case "cl_farm_production_types":
                return getFarmProductionType(id);
            case "cl_farm_types":
                return getFarmType(id);
            case "cl_fish_fishing_types":
                return getFishFishingType(id);
            case "cl_fish_fishing_zones":
                return getFishFishingZone(id);
            case "cl_ref_admin_level_1":
                return getRefAdminLevel1(id);
            case "cl_ref_admin_level_2":
                return getRefAdminLevel2(id);
            case "cl_ref_commodities":
                return getRefCommodity(id);
            case "cl_ref_countries":
                return getRefCountry(id);
            case "cl_ref_currencies":
                return getRefCurrency(id);
            case "cl_ref_declaration_sources":
                return getRefDeclarationSource(id);
            // case "cl_ref_gear_characteristics":
            // return getRefGearCharacteristic(id);
            case "cl_ref_gears":
                return getRefGear(id);
            case "cl_ref_landing_sites":
                return getRefLandingSite(id);
            case "cl_ref_languages":
                return getRefLanguage(id);
            case "cl_ref_languages_countries":
                return getRefLanguageCountry(id);
            case "cl_ref_product_types":
                return getRefProductType(id);
            case "cl_ref_products":
                return getRefProduct(id);
            case "cl_ref_regions":
                return getRefRegion(id);
            case "cl_ref_species":
                return getRefSpechie(id);
            case "cl_ref_vessel_types":
                return getRefVesselType(id);
            default:
                return null;
        }
    }

}