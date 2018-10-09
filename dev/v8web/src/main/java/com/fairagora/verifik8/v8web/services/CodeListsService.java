package com.fairagora.verifik8.v8web.services;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.*;
import com.fairagora.verifik8.v8web.data.repo.cl.*;
import com.fairagora.verifik8.v8web.mvc.admin.CLDTOMapper;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
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

    @Autowired
    protected CLDTOMapper cldtoMapper;

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

    public List<? extends BaseCodeListSupport> getAppDeclarationSourcesTypes() {
        return appDeclarationSourcesTypeRepository.findAll();
    }

    public CLAppDeductionSalaryType getAppDeductionSalaryType(long id) {
        return appDeductionSalaryTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppDeductionSalaryTypes() {
        return appDeductionSalaryTypeRepository.findAll();
    }

    public List<CLAppDeductionSalaryType> listActiveSalaryDeductionType() {
        return appDeductionSalaryTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppEnergyType getAppEnergyType(long id) {
        return appEnergyTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppEnergyTypes() {
        return appEnergyTypeRepository.findAll();
    }

    public CLAppEngineRole getAppEngineRole(long id) {
        return appEngineRoleRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppEngineRoles() {
        return appEngineRoleRepository.findAll();
    }

    public CLAppEngineType getAppEngineType(long id) {
        return appEngineTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppEngineTypes() {
        return appEngineTypeRepository.findAll();
    }

    public CLAppEntityDocumentTypes getAppEntityDocumentType(long id) {
        return appEntityDocumentTypesRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppEntityDocumentTypes() {
        return appEntityDocumentTypesRepository.findAll();
    }

    public List<CLAppEntityDocumentTypes> listActiveWorkerEntityDocumentTypes() {
        return appEntityDocumentTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLAppEntityType getAppEntityType(long id) {
        return appEntityTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppEntityTypes() {
        return appEntityTypeRepository.findAll();
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

    public List<? extends BaseCodeListSupport> getAppFreshWaterSypplyTypes() {
        return appFreshWaterSypplyTypeRepository.findAll();
    }

    public CLAppGetBackFinancialDepositReason getAppGetBackFinancialDepositReason(long id) {
        return appGetBackFinancialDepositReasonRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppGetBackFinancialDepositReasons() {
        return appGetBackFinancialDepositReasonRepository.findAll();
    }

    public List<CLAppGetBackFinancialDepositReason> listActiveGetBackFinancialDepositReason() {
        return appGetBackFinancialDepositReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHazardousTrainingType getAppHazardousTrainingType(long id) {
        return appHazardousTrainingTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppHazardousTrainingTypes() {
        return appHazardousTrainingTypeRepository.findAll();
    }

    public List<CLAppHazardousTrainingType> listHazardousTrainingTypeRepository() {
        return appHazardousTrainingTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHazardousWorkType getAppHazardousWorkType(long id) {
        return appHazardousWorkTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppHazardousWorkTypes() {
        return appHazardousWorkTypeRepository.findAll();
    }

    public List<CLAppHazardousWorkType> listActiveHazardousWorkType() {
        return appHazardousWorkTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHiringRestrictionType getAppHiringRestrictionType(long id) {
        return appHiringRestrictionTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppHiringRestrictionTypes() {
        return appHiringRestrictionTypeRepository.findAll();
    }

    public List<CLAppHiringRestrictionType> listActiveHiringRestrictionTypeRepository() {
        return appHiringRestrictionTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHullType getAppHullType(long id) {
        return appHullTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppHullTypes() {
        return appHullTypeRepository.findAll();
    }

    public CLAppHvHeExpensionType getAppHvHeExpensionType(long id) {
        return appHvHeExpensionTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppHvHeExpensionTypes() {
        return appHvHeExpensionTypeRepository.findAll();
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

    public List<? extends BaseCodeListSupport> getAppLegalStatus() {
        return appLegalStatusRepository.findAll();
    }

    public List<CLAppLegalStatus> listActiveLegalStatuses() {
        return appLegalStatusRepository.findByEnabledTrueOrderByName();
    }

    public CLAppLicenseType getAppLicenceType(long id) {
        return appLicenseTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppLicenceTypes() {
        return appLicenseTypeRepository.findAll();
    }

    public CLAppLocationType getAppLocationType(long id) {
        return appLocationTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppLocationTypes() {
        return appLocationTypeRepository.findAll();
    }

    public CLAppLocation getAppLocation(long id) {
        return appLocationRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppLocations() {
        return appLocationRepository.findAll();
    }

    public CLAppMeasureType getAppMeasureType(long id) {
        return appMeasureTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppMeasureTypes() {
        return appMeasureTypeRepository.findAll();
    }

    public List<CLAppMeasureType> listActiveMeasureTypes() {
        return appMeasureTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppNoEarlyTerminationContractReason getAppNoEarlyTerminationContractReason(long id) {
        return appNoEarlyTerminationContractReasonRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppNoEarlyTerminationContractReasons() {
        return appNoEarlyTerminationContractReasonRepository.findAll();
    }

    public List<CLAppNoEarlyTerminationContractReason> listActiveNoEarlyTerminationContractReason() {
        return appNoEarlyTerminationContractReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPaymentDebtType getAppPaymentDebtType(long id) {
        return appPaymentDebtTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppPaymentDebtTypes() {
        return appPaymentDebtTypeRepository.findAll();
    }

    public List<CLAppPaymentDebtType> listActivePaymentDebtType() {
        return appPaymentDebtTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPaymentFrequency getAppPaymentFrequency(long id) {
        return appPaymentFrequencyRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppPaymentFrequencies() {
        return appPaymentFrequencyRepository.findAll();
    }

    public List<CLAppPaymentFrequency> listActivePaymentFrequencies() {
        return appPaymentFrequencyRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPowerUnit getAppPowerUnit(long id) {
        return appPowerUnitRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppPowerUnits() {
        return appPowerUnitRepository.findAll();
    }

    public CLAppProdDataEntryType getAppProDataEntryType(long id) {
        return appProdDataEntryTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppProDataEntryTypes() {
        return appProdDataEntryTypeRepository.findAll();
    }

    public CLAppPropulsionType getAppPropulsionTypeRepository(long id) {
        return appPropulsionTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppPropulsionTypes() {
        return appPropulsionTypeRepository.findAll();
    }

    public CLAppQuantityUnitType getAppQuantityUnitType(long id) {
        return appQuantityUnitTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppQuantityUnitTypes() {
        return appQuantityUnitTypeRepository.findAll();
    }

    public CLAppQuantityUnit getAppQuantityUnit(long id) {
        return appQuantityUnitRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppQuantityUnits() {
        return appQuantityUnitRepository.findAll();
    }

    public List<CLAppQuantityUnit> listActiveQuantityUnit() {
        return appQuantityUnitRepository.findByEnabledTrueOrderByName();
    }

    public CLAppQuestionnaireAnswer getAppQuestionnaireAnswer(long id) {
        return appQuestionnaireAnswerRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppQuestionnaireAnswers() {
        return appQuestionnaireAnswerRepository.findAll();
    }

    public CLAppSoilAnalysisType getAppSoilAnalysisType(long id) {
        return appSoilAnalysisTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppSoilAnalysisTypes() {
        return appSoilAnalysisTypeRepository.findAll();
    }

    public List<CLAppSoilAnalysisType> listActiveSoilAnalysisType() {
        return appSoilAnalysisTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppStaffDeclarationType getAppStaffDeclarationType(long id) {
        return appStaffDeclarationTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppStaffDeclarationTypes() {
        return appStaffDeclarationTypeRepository.findAll();
    }

    public CLAppTerminationContractReason getAppTerminationContractReason(long id) {
        return appTerminationContractReasonRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppTerminationContractReasons() {
        return appTerminationContractReasonRepository.findAll();
    }

    public List<CLAppTerminationContractReason> listActiveTerminationContractReason() {
        return appTerminationContractReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppTilingActivityType getAppTilingActivityType(long id) {
        return appTilingActivityTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppTilingActivityTypes() {
        return appTilingActivityTypeRepository.findAll();
    }

    public List<CLAppTilingActivityType> listActiveTilingActivityTypes() {
        return appTilingActivityTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppVesselCharacteristic getAppVesselCharacteristic(long id) {
        return appVesselCharacteristicRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppVesselCharacteristics() {
        return appVesselCharacteristicRepository.findAll();
    }

    public CLAppVesselEquipmentType getAppVesselEquipmentType(long id) {
        return appVesselEquipmentTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppVesselEquipmentTypes() {
        return appVesselEquipmentTypeRepository.findAll();
    }

    public CLAppVesselHistoricalCharacteristicType getAppVesselHistoricalCharacteristicType(long id) {
        return appVesselHistoricalCharacteristicTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppVesselHistoricalCharacteristicTypes() {
        return appVesselHistoricalCharacteristicTypeRepository.findAll();
    }

    public CLAppVesselOperationalStatus getAppVesselOperationalStatus(long id) {
        return appVesselOperationalStatusRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppVesselOperationalStatus() {
        return appVesselOperationalStatusRepository.findAll();
    }

    public CLAppWaterSupplyType getAppWaterSupplyType(long id) {
        return appWaterSupplyTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getAppWaterSupplyTypes() {
        return appWaterSupplyTypeRepository.findAll();
    }

    /***** cl_farm - gets *****/

    public CLFarmBuildingType getFarmBuildingType(long id) {
        return farmBuildingTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getFarmBuildingTypes() {
        return farmBuildingTypeRepository.findAll();
    }

    public CLFarmPlotActivityType getFarmPlotActivityType(long id) {
        return farmPlotActivityTypesRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getFarmPlotActivityTypes() {
        return farmPlotActivityTypesRepository.findAll();
    }

    public List<CLFarmPlotActivityType> listActiveActivityTypes() {
        return farmPlotActivityTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmPondActivityType getFarmPondActivityType(long id) {
        return farmPondActivityTypesRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getFarmPondActivityTypes() {
        return farmPondActivityTypesRepository.findAll();
    }

    public List<CLFarmPondActivityType> listActivePondActivityTypes() {
        return farmPondActivityTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmPondType getFarmPondType(long id) {
        return farmPondTypesRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getFarmPondTypes() {
        return farmPondTypesRepository.findAll();
    }

    public List<CLFarmPondType> listActivePondTypes() {
        return farmPondTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmProductionType getFarmProductionType(long id) {
        return farmProductionTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getFarmProductionTypes() {
        return farmProductionTypeRepository.findAll();
    }

    public CLFarmType getFarmType(long id) {
        return farmTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getFarmTypes() {
        return farmTypeRepository.findAll();
    }

    /***** cl_fish - gets *****/

    public CLFishFishingType getFishFishingType(long id) {
        return fishFishingTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getFishFishingTypes() {
        return fishFishingTypeRepository.findAll();
    }

    public CLFishFishingZone getFishFishingZone(long id) {
        return fishFishingZoneRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getFishFishingZones() {
        return fishFishingZoneRepository.findAll();
    }

    /***** cl_ref - gets *****/

    public CLRefAdminLevel1 getRefAdminLevel1(long id) {
        return refAdminLevel1Repository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefAdminLevel1() {
        return refAdminLevel1Repository.findAll();
    }

    public CLRefAdminLevel2 getRefAdminLevel2(long id) {
        return refAdminLevel2Repository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefAdminLevel2() {
        return refAdminLevel2Repository.findAll();
    }

    public CLRefCommodity getRefCommodity(long id) {
        return refCommodityRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefCommodities() {
        return refCommodityRepository.findAll();
    }

    public List<CLRefCommodity> listActiveCommodities() {
        return refCommodityRepository.findByEnabledTrueOrderByName();
    }

    public CLRefCountry getRefCountry(long id) {
        return refCountryRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefCountries() {
        return refCountryRepository.findAll();
    }

    public List<CLRefCountry> listActiveCountries() {
        return refCountryRepository.findByEnabledTrueOrderByName();
    }

    public CLRefCurrency getRefCurrency(long id) {
        return refCurrencyRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefCurrencies() {
        return refCurrencyRepository.findAll();
    }

    public List<CLRefCurrency> listActiveCurrencies() {
        return refCurrencyRepository.findByEnabledTrueOrderByName();
    }

    public CLRefDeclarationSource getRefDeclarationSource(long id) {
        return refDeclarationSourceRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefDeclarationSources() {
        return refDeclarationSourceRepository.findAll();
    }

    public CLRefGearCharacteristic getRefGearCharacteristic(long id) {
        return refGearCharacteristicRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefGearCharacteristics() {
        return refGearCharacteristicRepository.findAll();
    }

    public CLRefGear getRefGear(long id) {
        return refGearRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefGears() {
        return refGearRepository.findAll();
    }

    public CLRefLandingSite getRefLandingSite(long id) {
        return refLandingSiteRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefLandingSites() {
        return refLandingSiteRepository.findAll();
    }

    public CLRefLanguage getRefLanguage(long id) {
        return refLanguageRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefLanguages() {
        return refLanguageRepository.findAll();
    }

    public List<CLRefLanguage> listActiveLanguages() {
        return refLanguageRepository.findByEnabledTrueOrderByName();
    }

    public CLRefLanguageCountry getRefLanguageCountry(long id) {
        return refLanguageCountryRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefLanguageCountries() {
        return refLanguageCountryRepository.findAll();
    }

    public CLRefProductType getRefProductType(long id) {
        return refProductTypesRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefProductTypes() {
        return refProductTypesRepository.findAll();
    }

    public List<CLRefProductType> listActiveProductTypes() {
        return refProductTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLRefProduct getRefProduct(long id) {
        return refProductRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefProducts() {
        return refProductRepository.findAll();
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

    public List<? extends BaseCodeListSupport> getRefRegions() {
        return refRegionRepository.findAll();
    }

    public CLRefSpecies getRefSpechie(long id) {
        return refSpeciesRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefSpechies() {
        return refSpeciesRepository.findAll();
    }

    public List<CLRefSpecies> listActiveSpecies() {
        return refSpeciesRepository.findByEnabledTrueOrderByName();
    }

    public CLRefVesselType getRefVesselType(long id) {
        return refVesselTypeRepository.findOne(id);
    }

    public List<? extends BaseCodeListSupport> getRefVesselTypes() {
        return refVesselTypeRepository.findAll();
    }

    public CLColumn getColumn(String tableName) {
        return columnRepository.findOne(tableName);
    }

    public void addCL(String tableName, CLDto clDto, Long id) {
        switch (tableName) {
            case "cl_app_administrative_characteristic_types": {
                CLAppAdministrativeCharacteristicType newCL;
                if (id == null) {
                    newCL = new CLAppAdministrativeCharacteristicType();
                } else {
                    newCL = appAdministrativeCharacteristicTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appAdministrativeCharacteristicTypeRepository.save(newCL);
                break;
            }
            case "cl_app_company_position_types": {
                CLAppCompanyPositionType newCL;
                if (id == null) {
                    newCL = new CLAppCompanyPositionType();
                } else {
                    newCL = appCompanyPositionTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appCompanyPositionTypeRepository.save(newCL);
                break;
            }
            case "cl_app_contract_types": {
                CLAppContractType newCL;
                if (id == null) {
                    newCL = new CLAppContractType();
                } else {
                    newCL = appContractTypesRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appContractTypesRepository.save(newCL);
                break;
            }
            case "cl_app_debt_types": {
                CLAppDebtType newCL;
                if (id == null) {
                    newCL = new CLAppDebtType();
                } else {
                    newCL = appDebtTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appDebtTypeRepository.save(newCL);

                break;
            }
            case "cl_app_declaration_sources_types": {
                CLAppDeclarationSourcesType newCL;
                if (id == null) {
                    newCL = new CLAppDeclarationSourcesType();
                } else {
                    newCL = appDeclarationSourcesTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appDeclarationSourcesTypeRepository.save(newCL);

                break;
            }
            case "cl_app_deduction_salary_types": {
                CLAppDeductionSalaryType newCL;
                if (id == null) {
                    newCL = new CLAppDeductionSalaryType();
                } else {
                    newCL = appDeductionSalaryTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appDeductionSalaryTypeRepository.save(newCL);

                break;
            }
            case "cl_app_energy_types": {
                CLAppEnergyType newCL;
                if (id == null) {
                    newCL = new CLAppEnergyType();
                } else {
                    newCL = appEnergyTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appEnergyTypeRepository.save(newCL);

                break;
            }
            case "cl_app_engine_roles": {
                CLAppEngineRole newCL;
                if (id == null) {
                    newCL = new CLAppEngineRole();
                } else {
                    newCL = appEngineRoleRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appEngineRoleRepository.save(newCL);

                break;
            }
            case "cl_app_engine_types": {
                CLAppEngineType newCL;
                if (id == null) {
                    newCL = new CLAppEngineType();
                } else {
                    newCL = appEngineTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appEngineTypeRepository.save(newCL);

                break;
            }
            case "cl_app_entity_document_types": {
                CLAppEntityDocumentTypes newCL;
                if (id == null) {
                    newCL = new CLAppEntityDocumentTypes();
                } else {
                    newCL = appEntityDocumentTypesRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appEntityDocumentTypesRepository.save(newCL);

                break;
            }
            case "cl_app_entity_types": {
                CLAppEntityType newCL;
                if (id == null) {
                    newCL = new CLAppEntityType();
                } else {
                    newCL = appEntityTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appEntityTypeRepository.save(newCL);

                break;
            }
            case "cl_app_fresh_water_sypply_types": {
                CLAppFreshWaterSypplyType newCL;
                if (id == null) {
                    newCL = new CLAppFreshWaterSypplyType();
                } else {
                    newCL = appFreshWaterSypplyTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appFreshWaterSypplyTypeRepository.save(newCL);

                break;
            }
            case "cl_app_get_back_financial_deposit_reasons": {
                CLAppGetBackFinancialDepositReason newCL;
                if (id == null) {
                    newCL = new CLAppGetBackFinancialDepositReason();
                } else {
                    newCL = appGetBackFinancialDepositReasonRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appGetBackFinancialDepositReasonRepository.save(newCL);

                break;
            }
            case "cl_app_hazardous_training_types": {
                CLAppHazardousTrainingType newCL;
                if (id == null) {
                    newCL = new CLAppHazardousTrainingType();
                } else {
                    newCL = appHazardousTrainingTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appHazardousTrainingTypeRepository.save(newCL);

                break;
            }
            case "cl_app_hazardous_work_type": {
                CLAppHazardousWorkType newCL;
                if (id == null) {
                    newCL = new CLAppHazardousWorkType();
                } else {
                    newCL = appHazardousWorkTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appHazardousWorkTypeRepository.save(newCL);

                break;
            }
            case "cl_app_hiring_restriction_types": {
                CLAppHiringRestrictionType newCL;
                if (id == null) {
                    newCL = new CLAppHiringRestrictionType();
                } else {
                    newCL = appHiringRestrictionTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appHiringRestrictionTypeRepository.save(newCL);

                break;
            }
            case "cl_app_hull_types": {
                CLAppHullType newCL;
                if (id == null) {
                    newCL = new CLAppHullType();
                } else {
                    newCL = appHullTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appHullTypeRepository.save(newCL);

                break;
            }
            case "cl_app_hvhe_expension_types": {
                CLAppHvHeExpensionType newCL;
                if (id == null) {
                    newCL = new CLAppHvHeExpensionType();
                } else {
                    newCL = appHvHeExpensionTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appHvHeExpensionTypeRepository.save(newCL);

                break;
            }
            case "cl_app_legal_status": {
                CLAppLegalStatus newCL;
                if (id == null) {
                    newCL = new CLAppLegalStatus();
                } else {
                    newCL = appLegalStatusRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appLegalStatusRepository.save(newCL);

                break;
            }
            case "cl_app_license_types": {
                CLAppLicenseType newCL;
                if (id == null) {
                    newCL = new CLAppLicenseType();
                } else {
                    newCL = appLicenseTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appLicenseTypeRepository.save(newCL);

                break;
            }
            case "cl_app_location_types": {
                CLAppLocationType newCL;
                if (id == null) {
                    newCL = new CLAppLocationType();
                } else {
                    newCL = appLocationTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appLocationTypeRepository.save(newCL);

                break;
            }
            case "cl_app_locations": {
                CLAppLocation newCL;
                if (id == null) {
                    newCL = new CLAppLocation();
                } else {
                    newCL = appLocationRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appLocationRepository.save(newCL);

                break;
            }
            case "cl_app_measure_types": {
                CLAppMeasureType newCL;
                if (id == null) {
                    newCL = new CLAppMeasureType();
                } else {
                    newCL = appMeasureTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appMeasureTypeRepository.save(newCL);

                break;
            }
            case "cl_app_no_early_termination_contract_reasons": {
                CLAppNoEarlyTerminationContractReason newCL;
                if (id == null) {
                    newCL = new CLAppNoEarlyTerminationContractReason();
                } else {
                    newCL = appNoEarlyTerminationContractReasonRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appNoEarlyTerminationContractReasonRepository.save(newCL);

                break;
            }
            case "cl_app_payment_debt_types": {
                CLAppPaymentDebtType newCL;
                if (id == null) {
                    newCL = new CLAppPaymentDebtType();
                } else {
                    newCL = appPaymentDebtTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appPaymentDebtTypeRepository.save(newCL);

                break;
            }
            case "cl_app_payment_frequencies": {
                CLAppPaymentFrequency newCL;
                if (id == null) {
                    newCL = new CLAppPaymentFrequency();
                } else {
                    newCL = appPaymentFrequencyRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appPaymentFrequencyRepository.save(newCL);

                break;
            }
            case "cl_app_power_units": {
                CLAppPowerUnit newCL;
                if (id == null) {
                    newCL = new CLAppPowerUnit();
                } else {
                    newCL = appPowerUnitRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appPowerUnitRepository.save(newCL);

                break;
            }
            case "cl_app_prod_data_entry_types": {
                CLAppProdDataEntryType newCL;
                if (id == null) {
                    newCL = new CLAppProdDataEntryType();
                } else {
                    newCL = appProdDataEntryTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appProdDataEntryTypeRepository.save(newCL);

                break;
            }
            case "cl_app_propulsion_types": {
                CLAppPropulsionType newCL;
                if (id == null) {
                    newCL = new CLAppPropulsionType();
                } else {
                    newCL = appPropulsionTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appPropulsionTypeRepository.save(newCL);

                break;
            }
            case "cl_app_quantity_unit_types": {
                CLAppQuantityUnitType newCL;
                if (id == null) {
                    newCL = new CLAppQuantityUnitType();
                } else {
                    newCL = appQuantityUnitTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appQuantityUnitTypeRepository.save(newCL);

                break;
            }
            case "cl_app_quantity_units": {
                CLAppQuantityUnit newCL;
                if (id == null) {
                    newCL = new CLAppQuantityUnit();
                } else {
                    newCL = appQuantityUnitRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appQuantityUnitRepository.save(newCL);

                break;
            }
            case "cl_app_questionnaire_answers": {
                CLAppQuestionnaireAnswer newCL;
                if (id == null) {
                    newCL = new CLAppQuestionnaireAnswer();
                } else {
                    newCL = appQuestionnaireAnswerRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appQuestionnaireAnswerRepository.save(newCL);

                break;
            }
            case "cl_app_soil_analysis_types": {
                CLAppSoilAnalysisType newCL;
                if (id == null) {
                    newCL = new CLAppSoilAnalysisType();
                } else {
                    newCL = appSoilAnalysisTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appSoilAnalysisTypeRepository.save(newCL);

                break;
            }
            case "cl_app_staff_declaration_types": {
                CLAppStaffDeclarationType newCL;
                if (id == null) {
                    newCL = new CLAppStaffDeclarationType();
                } else {
                    newCL = appStaffDeclarationTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appStaffDeclarationTypeRepository.save(newCL);

                break;
            }
            case "cl_app_termination_contract_reasons": {
                CLAppTerminationContractReason newCL;
                if (id == null) {
                    newCL = new CLAppTerminationContractReason();
                } else {
                    newCL = appTerminationContractReasonRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appTerminationContractReasonRepository.save(newCL);

                break;
            }
            case "cl_app_tiling_activity_types": {
                CLAppTilingActivityType newCL;
                if (id == null) {
                    newCL = new CLAppTilingActivityType();
                } else {
                    newCL = appTilingActivityTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appTilingActivityTypeRepository.save(newCL);

                break;
            }
            case "cl_app_vessel_characteristics": {
                CLAppVesselCharacteristic newCL;
                if (id == null) {
                    newCL = new CLAppVesselCharacteristic();
                } else {
                    newCL = appVesselCharacteristicRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appVesselCharacteristicRepository.save(newCL);

                break;
            }
            case "cl_app_vessel_equipment_types": {
                CLAppVesselEquipmentType newCL;
                if (id == null) {
                    newCL = new CLAppVesselEquipmentType();
                } else {
                    newCL = appVesselEquipmentTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appVesselEquipmentTypeRepository.save(newCL);

                break;
            }
            case "cl_app_vessel_historical_characteristic_types": {
                CLAppVesselHistoricalCharacteristicType newCL;
                if (id == null) {
                    newCL = new CLAppVesselHistoricalCharacteristicType();
                } else {
                    newCL = appVesselHistoricalCharacteristicTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appVesselHistoricalCharacteristicTypeRepository.save(newCL);

                break;
            }
            case "cl_app_vessel_operational_status": {
                CLAppVesselOperationalStatus newCL;
                if (id == null) {
                    newCL = new CLAppVesselOperationalStatus();
                } else {
                    newCL = appVesselOperationalStatusRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appVesselOperationalStatusRepository.save(newCL);

                break;
            }
            case "cl_app_water_supply_types": {
                CLAppWaterSupplyType newCL;
                if (id == null) {
                    newCL = new CLAppWaterSupplyType();
                } else {
                    newCL = appWaterSupplyTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                appWaterSupplyTypeRepository.save(newCL);

                break;
            }
            case "cl_farm_building_types": {
                CLFarmBuildingType newCL;
                if (id == null) {
                    newCL = new CLFarmBuildingType();
                } else {
                    newCL = farmBuildingTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                farmBuildingTypeRepository.save(newCL);

                break;
            }
            case "cl_farm_plot_activity_types": {
                CLFarmPlotActivityType newCL;
                if (id == null) {
                    newCL = new CLFarmPlotActivityType();
                } else {
                    newCL = farmPlotActivityTypesRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                farmPlotActivityTypesRepository.save(newCL);

                break;
            }
            case "cl_farm_pond_activity_types": {
                CLFarmPondActivityType newCL;
                if (id == null) {
                    newCL = new CLFarmPondActivityType();
                } else {
                    newCL = farmPondActivityTypesRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                farmPondActivityTypesRepository.save(newCL);

                break;
            }
            case "cl_farm_pond_types": {
                CLFarmPondType newCL;
                if (id == null) {
                    newCL = new CLFarmPondType();
                } else {
                    newCL = farmPondTypesRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                farmPondTypesRepository.save(newCL);

                break;
            }
            case "cl_farm_production_types": {
                CLFarmProductionType newCL;
                if (id == null) {
                    newCL = new CLFarmProductionType();
                } else {
                    newCL = farmProductionTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                farmProductionTypeRepository.save(newCL);

                break;
            }
            case "cl_farm_types": {
                CLFarmType newCL;
                if (id == null) {
                    newCL = new CLFarmType();
                } else {
                    newCL = farmTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                farmTypeRepository.save(newCL);

                break;
            }
            case "cl_fish_fishing_types": {
                CLFishFishingType newCL;
                if (id == null) {
                    newCL = new CLFishFishingType();
                } else {
                    newCL = fishFishingTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                fishFishingTypeRepository.save(newCL);

                break;
            }
            case "cl_fish_fishing_zones": {
                CLFishFishingZone newCL;
                if (id == null) {
                    newCL = new CLFishFishingZone();
                } else {
                    newCL = fishFishingZoneRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                fishFishingZoneRepository.save(newCL);

                break;
            }
            case "cl_ref_admin_level_1": {
                CLRefAdminLevel1 newCL;
                if (id == null) {
                    newCL = new CLRefAdminLevel1();
                } else {
                    newCL = refAdminLevel1Repository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refAdminLevel1Repository.save(newCL);

                break;
            }
            case "cl_ref_admin_level_2": {
                CLRefAdminLevel2 newCL;
                if (id == null) {
                    newCL = new CLRefAdminLevel2();
                } else {
                    newCL = refAdminLevel2Repository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refAdminLevel2Repository.save(newCL);

                break;
            }
            case "cl_ref_commodities": {
                CLRefCommodity newCL;
                if (id == null) {
                    newCL = new CLRefCommodity();
                } else {
                    newCL = refCommodityRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refCommodityRepository.save(newCL);

                break;
            }
            case "cl_ref_countries": {
                CLRefCountry newCL;
                if (id == null) {
                    newCL = new CLRefCountry();
                } else {
                    newCL = refCountryRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refCountryRepository.save(newCL);

                break;
            }
            case "cl_ref_currencies": {
                CLRefCurrency newCL;
                if (id == null) {
                    newCL = new CLRefCurrency();
                } else {
                    newCL = refCurrencyRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refCurrencyRepository.save(newCL);

                break;
            }
            case "cl_ref_declaration_sources": {
                CLRefDeclarationSource newCL;
                if (id == null) {
                    newCL = new CLRefDeclarationSource();
                } else {
                    newCL = refDeclarationSourceRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refDeclarationSourceRepository.save(newCL);

                break;
            }
            case "cl_ref_gear_characteristics": {
                CLRefGearCharacteristic newCL;
                if (id == null) {
                    newCL = new CLRefGearCharacteristic();
                } else {
                    newCL = refGearCharacteristicRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refGearCharacteristicRepository.save(newCL);

                break;
            }
            case "cl_ref_gears": {
                CLRefGear newCL;
                if (id == null) {
                    newCL = new CLRefGear();
                } else {
                    newCL = refGearRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refGearRepository.save(newCL);

                break;
            }
            case "cl_ref_landing_sites": {
                CLRefLandingSite newCL;
                if (id == null) {
                    newCL = new CLRefLandingSite();
                } else {
                    newCL = refLandingSiteRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refLandingSiteRepository.save(newCL);

                break;
            }
            case "cl_ref_languages": {
                CLRefLanguage newCL;
                if (id == null) {
                    newCL = new CLRefLanguage();
                } else {
                    newCL = refLanguageRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refLanguageRepository.save(newCL);

                break;
            }
            case "cl_ref_languages_countries": {
                CLRefLanguageCountry newCL;
                if (id == null) {
                    newCL = new CLRefLanguageCountry();
                } else {
                    newCL = refLanguageCountryRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refLanguageCountryRepository.save(newCL);

                break;
            }
            case "cl_ref_product_types": {
                CLRefProductType newCL;
                if (id == null) {
                    newCL = new CLRefProductType();
                } else {
                    newCL = refProductTypesRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refProductTypesRepository.save(newCL);

                break;
            }
            case "cl_ref_products": {
                CLRefProduct newCL;
                if (id == null) {
                    newCL = new CLRefProduct();
                } else {
                    newCL = refProductRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refProductRepository.save(newCL);

                break;
            }
            case "cl_ref_regions": {
                CLRefRegion newCL;
                if (id == null) {
                    newCL = new CLRefRegion();
                } else {
                    newCL = refRegionRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refRegionRepository.save(newCL);

                break;
            }
            case "cl_ref_species": {
                CLRefSpecies newCL;
                if (id == null) {
                    newCL = new CLRefSpecies();
                } else {
                    newCL = refSpeciesRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refSpeciesRepository.save(newCL);

                break;
            }
            case "cl_ref_vessel_types": {
                CLRefVesselType newCL;
                if (id == null) {
                    newCL = new CLRefVesselType();
                } else {
                    newCL = refVesselTypeRepository.findOne(id);
                }

                cldtoMapper.fillEntity(clDto, newCL);
                refVesselTypeRepository.save(newCL);

                break;
            }
            default:
        }
    }

    public BaseCodeListSupport get(String tableName, long id) {
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
             case "cl_ref_gear_characteristics":
                 return getRefGearCharacteristic(id);
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
            case "cl_app_declaration_sources_types":
                return getAppDeclarationSourcesTypes();
            case "cl_app_deduction_salary_types":
                return getAppDeductionSalaryTypes();
            case "cl_app_energy_types":
                return getAppEnergyTypes();
            case "cl_app_engine_roles":
                return getAppEngineRoles();
            case "cl_app_engine_types":
                return getAppEngineTypes();
            case "cl_app_entity_document_types":
                return getAppEntityDocumentTypes();
            case "cl_app_entity_types":
                return getAppEntityTypes();
            case "cl_app_fresh_water_sypply_types":
                return getAppFreshWaterSypplyTypes();
            case "cl_app_get_back_financial_deposit_reasons":
                return getAppGetBackFinancialDepositReasons();
            case "cl_app_hazardous_training_types":
                return getAppHazardousTrainingTypes();
            case "cl_app_hazardous_work_type":
                return getAppHazardousWorkTypes();
            case "cl_app_hiring_restriction_types":
                return getAppHiringRestrictionTypes();
            case "cl_app_hull_types":
                return getAppHullTypes();
            case "cl_app_hvhe_expension_types":
                return getAppHvHeExpensionTypes();
            case "cl_app_legal_status":
                return getAppLegalStatus();
            case "cl_app_license_types":
                return getAppLicenceTypes();
            case "cl_app_location_types":
                return getAppLocationTypes();
            case "cl_app_locations":
                return getAppLocations();
            case "cl_app_measure_types":
                return getAppMeasureTypes();
            case "cl_app_no_early_termination_contract_reasons":
                return getAppNoEarlyTerminationContractReasons();
            case "cl_app_payment_debt_types":
                return getAppPaymentDebtTypes();
            case "cl_app_payment_frequencies":
                return getAppPaymentFrequencies();
            case "cl_app_power_units":
                return getAppPowerUnits();
            case "cl_app_prod_data_entry_types":
                return getAppProDataEntryTypes();
            case "cl_app_propulsion_types":
                return getAppPropulsionTypes();
            case "cl_app_quantity_unit_types":
                return getAppQuantityUnitTypes();
            case "cl_app_quantity_units":
                return getAppQuantityUnits();
            case "cl_app_questionnaire_answers":
                return getAppQuestionnaireAnswers();
            case "cl_app_soil_analysis_types":
                return getAppSoilAnalysisTypes();
            case "cl_app_staff_declaration_types":
                return getAppStaffDeclarationTypes();
            case "cl_app_termination_contract_reasons":
                return getAppTerminationContractReasons();
            case "cl_app_tiling_activity_types":
                return getAppTilingActivityTypes();
            case "cl_app_vessel_characteristics":
                return getAppVesselCharacteristics();
            case "cl_app_vessel_equipment_types":
                return getAppVesselEquipmentTypes();
            case "cl_app_vessel_historical_characteristic_types":
                return getAppVesselHistoricalCharacteristicTypes();
            case "cl_app_vessel_operational_status":
                return getAppVesselOperationalStatus();
            case "cl_app_water_supply_types":
                return getAppWaterSupplyTypes();
            case "cl_farm_building_types":
                return getFarmBuildingTypes();
            case "cl_farm_plot_activity_types":
                return getFarmPlotActivityTypes();
            case "cl_farm_pond_activity_types":
                return getFarmPondActivityTypes();
            case "cl_farm_pond_types":
                return getFarmPondTypes();
            case "cl_farm_production_types":
                return getFarmProductionTypes();
            case "cl_farm_types":
                return getFarmTypes();
            case "cl_fish_fishing_types":
                return getFishFishingTypes();
            case "cl_fish_fishing_zones":   //  TODO Start test here
                return getFishFishingZones();
            case "cl_ref_admin_level_1":
                return getRefAdminLevel1();
            case "cl_ref_admin_level_2":
                return getRefAdminLevel2();
            case "cl_ref_commodities":
                return getRefCommodities();
            case "cl_ref_countries":
                return getRefCountries();
            case "cl_ref_currencies":
                return getRefCurrencies();
            case "cl_ref_declaration_sources":
                return getRefDeclarationSources();
            case "cl_ref_gear_characteristics":
                return getRefGearCharacteristics();
            case "cl_ref_gears":
                return getRefGears();
            case "cl_ref_landing_sites":
                return getRefLandingSites();
            case "cl_ref_languages":
                return getRefLanguages();
            case "cl_ref_languages_countries":
                return getRefLanguageCountries();
            case "cl_ref_product_types":
                return getRefProductTypes();
            case "cl_ref_products":
                return getRefProducts();
            case "cl_ref_regions":
                return getRefRegions();
            case "cl_ref_species":
                return getRefSpechies();
            case "cl_ref_vessel_types":
                return getRefVesselTypes();
            default:
                return null;
        }
    }
}