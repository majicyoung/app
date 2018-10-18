package com.fairagora.verifik8.v8web.services;

import java.util.ArrayList;
import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.*;
import com.fairagora.verifik8.v8web.data.repo.cl.*;
import com.fairagora.verifik8.v8web.mvc.admin.CLColumnDTOMapper;
import com.fairagora.verifik8.v8web.mvc.admin.CLDTOMapper;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLColumnDto;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CodeListsService {

    @Autowired
    private CLColumnRepository columnRepository;

    /*****  cl_app *****/

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

    /*****  mapper *****/

    @Autowired
    protected CLDTOMapper cldtoMapper;

    @Autowired
    protected CLColumnDTOMapper clColumnDTOMapper;

    /***** cl_app - gets *****/

    public CLAppAdministrativeCharacteristicType getAppAdministrativeCharacteristicType(long id) {
        return appAdministrativeCharacteristicTypeRepository.findOne(id);
    }

    public List<CLAppAdministrativeCharacteristicType> getAppAdministrativeCharacteristicTypes() {
        return appAdministrativeCharacteristicTypeRepository.findAll();
    }

    public CLAppCompanyPositionType getAppCompanyPositionType(long id) {
        return appCompanyPositionTypeRepository.findOne(id);
    }

    public List<CLAppCompanyPositionType> getAppCompanyPositionTypes() {
        return appCompanyPositionTypeRepository.findAll();
    }

    public List<CLAppCompanyPositionType> listActivePositionTypes() {
        return appCompanyPositionTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppContractType getAppContractType(long id) {
        return appContractTypesRepository.findOne(id);
    }

    public List<CLAppContractType> getAppContractTypes() {
        return appContractTypesRepository.findAll();
    }

    public List<CLAppContractType> listActiveContractTypes() {
        return appContractTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLAppDebtType getAppDebtType(long id) {
        return appDebtTypeRepository.findOne(id);
    }

    public List<CLAppDebtType> getAppDebtTypes() {
        return appDebtTypeRepository.findAll();
    }

    public CLAppDeclarationSourcesType getAppDeclarationSourcesType(long id) {
        return appDeclarationSourcesTypeRepository.findOne(id);
    }

    public List<CLAppDeclarationSourcesType> getAppDeclarationSourcesTypes() {
        return appDeclarationSourcesTypeRepository.findAll();
    }

    public CLAppDeductionSalaryType getAppDeductionSalaryType(long id) {
        return appDeductionSalaryTypeRepository.findOne(id);
    }

    public List<CLAppDeductionSalaryType> getAppDeductionSalaryTypes() {
        return appDeductionSalaryTypeRepository.findAll();
    }

    public List<CLAppDeductionSalaryType> listActiveSalaryDeductionType() {
        return appDeductionSalaryTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppEnergyType getAppEnergyType(long id) {
        return appEnergyTypeRepository.findOne(id);
    }

    public List<CLAppEnergyType> getAppEnergyTypes() {
        return appEnergyTypeRepository.findAll();
    }

    public CLAppEngineRole getAppEngineRole(long id) {
        return appEngineRoleRepository.findOne(id);
    }

    public List<CLAppEngineRole> getAppEngineRoles() {
        return appEngineRoleRepository.findAll();
    }

    public CLAppEngineType getAppEngineType(long id) {
        return appEngineTypeRepository.findOne(id);
    }

    public List<CLAppEngineType> getAppEngineTypes() {
        return appEngineTypeRepository.findAll();
    }

    public CLAppEntityDocumentTypes getAppEntityDocumentType(long id) {
        return appEntityDocumentTypesRepository.findOne(id);
    }

    public List<CLAppEntityDocumentTypes> getAppEntityDocumentTypes() {
        return appEntityDocumentTypesRepository.findAll();
    }

    public List<CLAppEntityDocumentTypes> listActiveWorkerEntityDocumentTypes() {
        return appEntityDocumentTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLAppEntityType getAppEntityType(long id) {
        return appEntityTypeRepository.findOne(id);
    }

    public List<CLAppEntityType> getAppEntityTypes() {
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

    public List<CLAppFreshWaterSypplyType> getAppFreshWaterSypplyTypes() {
        return appFreshWaterSypplyTypeRepository.findAll();
    }

    public CLAppGetBackFinancialDepositReason getAppGetBackFinancialDepositReason(long id) {
        return appGetBackFinancialDepositReasonRepository.findOne(id);
    }

    public List<CLAppGetBackFinancialDepositReason> getAppGetBackFinancialDepositReasons() {
        return appGetBackFinancialDepositReasonRepository.findAll();
    }

    public List<CLAppGetBackFinancialDepositReason> listActiveGetBackFinancialDepositReason() {
        return appGetBackFinancialDepositReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHazardousTrainingType getAppHazardousTrainingType(long id) {
        return appHazardousTrainingTypeRepository.findOne(id);
    }

    public List<CLAppHazardousTrainingType> getAppHazardousTrainingTypes() {
        return appHazardousTrainingTypeRepository.findAll();
    }

    public List<CLAppHazardousTrainingType> listHazardousTrainingTypeRepository() {
        return appHazardousTrainingTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHazardousWorkType getAppHazardousWorkType(long id) {
        return appHazardousWorkTypeRepository.findOne(id);
    }

    public List<CLAppHazardousWorkType> getAppHazardousWorkTypes() {
        return appHazardousWorkTypeRepository.findAll();
    }

    public List<CLAppHazardousWorkType> listActiveHazardousWorkType() {
        return appHazardousWorkTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHiringRestrictionType getAppHiringRestrictionType(long id) {
        return appHiringRestrictionTypeRepository.findOne(id);
    }

    public List<CLAppHiringRestrictionType> getAppHiringRestrictionTypes() {
        return appHiringRestrictionTypeRepository.findAll();
    }

    public List<CLAppHiringRestrictionType> listActiveHiringRestrictionTypeRepository() {
        return appHiringRestrictionTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppHullType getAppHullType(long id) {
        return appHullTypeRepository.findOne(id);
    }

    public List<CLAppHullType> getAppHullTypes() {
        return appHullTypeRepository.findAll();
    }

    public CLAppHvHeExpensionType getAppHvHeExpensionType(long id) {
        return appHvHeExpensionTypeRepository.findOne(id);
    }

    public List<CLAppHvHeExpensionType> getAppHvHeExpensionTypes() {
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

    public List<CLAppLegalStatus> getAppLegalStatus() {
        return appLegalStatusRepository.findAll();
    }

    public List<CLAppLegalStatus> listActiveLegalStatuses() {
        return appLegalStatusRepository.findByEnabledTrueOrderByName();
    }

    public CLAppLicenseType getAppLicenceType(long id) {
        return appLicenseTypeRepository.findOne(id);
    }

    public List<CLAppLicenseType> getAppLicenceTypes() {
        return appLicenseTypeRepository.findAll();
    }

    public CLAppLocationType getAppLocationType(long id) {
        return appLocationTypeRepository.findOne(id);
    }

    public List<CLAppLocationType> getAppLocationTypes() {
        return appLocationTypeRepository.findAll();
    }

    public CLAppLocation getAppLocation(long id) {
        return appLocationRepository.findOne(id);
    }

    public List<CLAppLocation> getAppLocations() {
        return appLocationRepository.findAll();
    }

    public CLAppMeasureType getAppMeasureType(long id) {
        return appMeasureTypeRepository.findOne(id);
    }

    public List<CLAppMeasureType> getAppMeasureTypes() {
        return appMeasureTypeRepository.findAll();
    }

    public List<CLAppMeasureType> listActiveMeasureTypes() {
        return appMeasureTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppNoEarlyTerminationContractReason getAppNoEarlyTerminationContractReason(long id) {
        return appNoEarlyTerminationContractReasonRepository.findOne(id);
    }

    public List<CLAppNoEarlyTerminationContractReason> getAppNoEarlyTerminationContractReasons() {
        return appNoEarlyTerminationContractReasonRepository.findAll();
    }

    public List<CLAppNoEarlyTerminationContractReason> listActiveNoEarlyTerminationContractReason() {
        return appNoEarlyTerminationContractReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPaymentDebtType getAppPaymentDebtType(long id) {
        return appPaymentDebtTypeRepository.findOne(id);
    }

    public List<CLAppPaymentDebtType> getAppPaymentDebtTypes() {
        return appPaymentDebtTypeRepository.findAll();
    }

    public List<CLAppPaymentDebtType> listActivePaymentDebtType() {
        return appPaymentDebtTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPaymentFrequency getAppPaymentFrequency(long id) {
        return appPaymentFrequencyRepository.findOne(id);
    }

    public List<CLAppPaymentFrequency> getAppPaymentFrequencies() {
        return appPaymentFrequencyRepository.findAll();
    }

    public List<CLAppPaymentFrequency> listActivePaymentFrequencies() {
        return appPaymentFrequencyRepository.findByEnabledTrueOrderByName();
    }

    public CLAppPowerUnit getAppPowerUnit(long id) {
        return appPowerUnitRepository.findOne(id);
    }

    public List<CLAppPowerUnit> getAppPowerUnits() {
        return appPowerUnitRepository.findAll();
    }

    public CLAppProdDataEntryType getAppProDataEntryType(long id) {
        return appProdDataEntryTypeRepository.findOne(id);
    }

    public List<CLAppProdDataEntryType> getAppProDataEntryTypes() {
        return appProdDataEntryTypeRepository.findAll();
    }

    public CLAppPropulsionType getAppPropulsionType(long id) {
        return appPropulsionTypeRepository.findOne(id);
    }

    public List<CLAppPropulsionType> getAppPropulsionTypes() {
        return appPropulsionTypeRepository.findAll();
    }

    public CLAppQuantityUnitType getAppQuantityUnitType(long id) {
        return appQuantityUnitTypeRepository.findOne(id);
    }

    public List<CLAppQuantityUnitType> getAppQuantityUnitTypes() {
        return appQuantityUnitTypeRepository.findAll();
    }

    public CLAppQuantityUnit getAppQuantityUnit(long id) {
        return appQuantityUnitRepository.findOne(id);
    }

    public List<CLAppQuantityUnit> getAppQuantityUnits() {
        return appQuantityUnitRepository.findAll();
    }

    public List<CLAppQuantityUnit> listActiveQuantityUnit() {
        return appQuantityUnitRepository.findByEnabledTrueOrderByName();
    }

    public CLAppQuestionnaireAnswer getAppQuestionnaireAnswer(long id) {
        return appQuestionnaireAnswerRepository.findOne(id);
    }

    public List<CLAppQuestionnaireAnswer> getAppQuestionnaireAnswers() {
        return appQuestionnaireAnswerRepository.findAll();
    }

    public CLAppSoilAnalysisType getAppSoilAnalysisType(long id) {
        return appSoilAnalysisTypeRepository.findOne(id);
    }

    public List<CLAppSoilAnalysisType> getAppSoilAnalysisTypes() {
        return appSoilAnalysisTypeRepository.findAll();
    }

    public List<CLAppSoilAnalysisType> listActiveSoilAnalysisType() {
        return appSoilAnalysisTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppStaffDeclarationType getAppStaffDeclarationType(long id) {
        return appStaffDeclarationTypeRepository.findOne(id);
    }

    public List<CLAppStaffDeclarationType> getAppStaffDeclarationTypes() {
        return appStaffDeclarationTypeRepository.findAll();
    }

    public CLAppTerminationContractReason getAppTerminationContractReason(long id) {
        return appTerminationContractReasonRepository.findOne(id);
    }

    public List<CLAppTerminationContractReason> getAppTerminationContractReasons() {
        return appTerminationContractReasonRepository.findAll();
    }

    public List<CLAppTerminationContractReason> listActiveTerminationContractReason() {
        return appTerminationContractReasonRepository.findByEnabledTrueOrderByName();
    }

    public CLAppTilingActivityType getAppTilingActivityType(long id) {
        return appTilingActivityTypeRepository.findOne(id);
    }

    public List<CLAppTilingActivityType> getAppTilingActivityTypes() {
        return appTilingActivityTypeRepository.findAll();
    }

    public List<CLAppTilingActivityType> listActiveTilingActivityTypes() {
        return appTilingActivityTypeRepository.findByEnabledTrueOrderByName();
    }

    public CLAppVesselCharacteristic getAppVesselCharacteristic(long id) {
        return appVesselCharacteristicRepository.findOne(id);
    }

    public List<CLAppVesselCharacteristic> getAppVesselCharacteristics() {
        return appVesselCharacteristicRepository.findAll();
    }

    public CLAppVesselEquipmentType getAppVesselEquipmentType(long id) {
        return appVesselEquipmentTypeRepository.findOne(id);
    }

    public List<CLAppVesselEquipmentType> getAppVesselEquipmentTypes() {
        return appVesselEquipmentTypeRepository.findAll();
    }

    public CLAppVesselHistoricalCharacteristicType getAppVesselHistoricalCharacteristicType(long id) {
        return appVesselHistoricalCharacteristicTypeRepository.findOne(id);
    }

    public List<CLAppVesselHistoricalCharacteristicType> getAppVesselHistoricalCharacteristicTypes() {
        return appVesselHistoricalCharacteristicTypeRepository.findAll();
    }

    public CLAppVesselOperationalStatus getAppVesselOperationalStatus(long id) {
        return appVesselOperationalStatusRepository.findOne(id);
    }

    public List<CLAppVesselOperationalStatus> getAppVesselOperationalStatus() {
        return appVesselOperationalStatusRepository.findAll();
    }

    public CLAppWaterSupplyType getAppWaterSupplyType(long id) {
        return appWaterSupplyTypeRepository.findOne(id);
    }

    public List<CLAppWaterSupplyType> getAppWaterSupplyTypes() {
        return appWaterSupplyTypeRepository.findAll();
    }

    /***** cl_farm - gets *****/

    public CLFarmBuildingType getFarmBuildingType(long id) {
        return farmBuildingTypeRepository.findOne(id);
    }

    public List<CLFarmBuildingType> getFarmBuildingTypes() {
        return farmBuildingTypeRepository.findAll();
    }

    public CLFarmPlotActivityType getFarmPlotActivityType(long id) {
        return farmPlotActivityTypesRepository.findOne(id);
    }

    public List<CLFarmPlotActivityType> getFarmPlotActivityTypes() {
        return farmPlotActivityTypesRepository.findAll();
    }

    public List<CLFarmPlotActivityType> listActiveActivityTypes() {
        return farmPlotActivityTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmPondActivityType getFarmPondActivityType(long id) {
        return farmPondActivityTypesRepository.findOne(id);
    }

    public List<CLFarmPondActivityType> getFarmPondActivityTypes() {
        return farmPondActivityTypesRepository.findAll();
    }

    public List<CLFarmPondActivityType> listActivePondActivityTypes() {
        return farmPondActivityTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmPondType getFarmPondType(long id) {
        return farmPondTypesRepository.findOne(id);
    }

    public List<CLFarmPondType> getFarmPondTypes() {
        return farmPondTypesRepository.findAll();
    }

    public List<CLFarmPondType> listActivePondTypes() {
        return farmPondTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLFarmProductionType getFarmProductionType(long id) {
        return farmProductionTypeRepository.findOne(id);
    }

    public List<CLFarmProductionType> getFarmProductionTypes() {
        return farmProductionTypeRepository.findAll();
    }

    public CLFarmType getFarmType(long id) {
        return farmTypeRepository.findOne(id);
    }

    public List<CLFarmType> getFarmTypes() {
        return farmTypeRepository.findAll();
    }

    /***** cl_fish - gets *****/

    public CLFishFishingType getFishFishingType(long id) {
        return fishFishingTypeRepository.findOne(id);
    }

    public List<CLFishFishingType> getFishFishingTypes() {
        return fishFishingTypeRepository.findAll();
    }

    public CLFishFishingZone getFishFishingZone(long id) {
        return fishFishingZoneRepository.findOne(id);
    }

    public List<CLFishFishingZone> getFishFishingZones() {
        return fishFishingZoneRepository.findAll();
    }

    /***** cl_ref - gets *****/

    public CLRefAdminLevel1 getRefAdminLevel1(long id) {
        return refAdminLevel1Repository.findOne(id);
    }

    public List<CLRefAdminLevel1> getRefAdminLevel1() {
        return refAdminLevel1Repository.findAll();
    }

    public CLRefAdminLevel2 getRefAdminLevel2(long id) {
        return refAdminLevel2Repository.findOne(id);
    }

    public List<CLRefAdminLevel2> getRefAdminLevel2() {
        return refAdminLevel2Repository.findAll();
    }

    public CLRefCommodity getRefCommodity(long id) {
        return refCommodityRepository.findOne(id);
    }

    public List<CLRefCommodity> getRefCommodities() {
        return refCommodityRepository.findAll();
    }

    public List<CLRefCommodity> listActiveCommodities() {
        return refCommodityRepository.findByEnabledTrueOrderByName();
    }

    public CLRefCountry getRefCountry(long id) {
        return refCountryRepository.findOne(id);
    }

    public List<CLRefCountry> getRefCountries() {
        return refCountryRepository.findAll();
    }

    public List<CLRefCountry> listActiveCountries() {
        return refCountryRepository.findByEnabledTrueOrderByName();
    }

    public CLRefCurrency getRefCurrency(long id) {
        return refCurrencyRepository.findOne(id);
    }

    public List<CLRefCurrency> getRefCurrencies() {
        return refCurrencyRepository.findAll();
    }

    public List<CLRefCurrency> listActiveCurrencies() {
        return refCurrencyRepository.findByEnabledTrueOrderByName();
    }

    public CLRefDeclarationSource getRefDeclarationSource(long id) {
        return refDeclarationSourceRepository.findOne(id);
    }

    public List<CLRefDeclarationSource> getRefDeclarationSources() {
        return refDeclarationSourceRepository.findAll();
    }

    public CLRefGearCharacteristic getRefGearCharacteristic(long id) {
        return refGearCharacteristicRepository.findOne(id);
    }

    public List<CLRefGearCharacteristic> getRefGearCharacteristics() {
        return refGearCharacteristicRepository.findAll();
    }

    public CLRefGear getRefGear(long id) {
        return refGearRepository.findOne(id);
    }

    public List<CLRefGear> getRefGears() {
        return refGearRepository.findAll();
    }

    public CLRefLandingSite getRefLandingSite(long id) {
        return refLandingSiteRepository.findOne(id);
    }

    public List<CLRefLandingSite> getRefLandingSites() {
        return refLandingSiteRepository.findAll();
    }

    public CLRefLanguage getRefLanguage(long id) {
        return refLanguageRepository.findOne(id);
    }

    public List<CLRefLanguage> getRefLanguages() {
        return refLanguageRepository.findAll();
    }

    public List<CLRefLanguage> listActiveLanguages() {
        return refLanguageRepository.findByEnabledTrueOrderByName();
    }

    public CLRefLanguageCountry getRefLanguageCountry(long languageId, long countryId) {
        return refLanguageCountryRepository.findOne(new LanguageCountryKey(languageId, countryId));
    }

    public List<CLRefLanguageCountry> getRefLanguageCountries() {
        return refLanguageCountryRepository.findAll();
    }

    public CLRefProductType getRefProductType(long id) {
        return refProductTypesRepository.findOne(id);
    }

    public List<CLRefProductType> getRefProductTypes() {
        return refProductTypesRepository.findAll();
    }

    public List<CLRefProductType> listActiveProductTypes() {
        return refProductTypesRepository.findByEnabledTrueOrderByName();
    }

    public CLRefProduct getRefProduct(long id) {
        return refProductRepository.findOne(id);
    }

    public List<CLRefProduct> getRefProducts() {
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

    public List<CLRefRegion> getRefRegions() {
        return refRegionRepository.findAll();
    }

    public CLRefSpecies getRefSpechie(long id) {
        return refSpeciesRepository.findOne(id);
    }

    public List<CLRefSpecies> getRefSpechies() {
        return refSpeciesRepository.findAll();
    }

    public List<CLRefSpecies> listActiveSpecies() {
        return refSpeciesRepository.findByEnabledTrueOrderByName();
    }

    public CLRefVesselType getRefVesselType(long id) {
        return refVesselTypeRepository.findOne(id);
    }

    public List<CLRefVesselType> getRefVesselTypes() {
        return refVesselTypeRepository.findAll();
    }

    public CLColumnDto getColumn(String tableName) {
        CLColumn clColumn = columnRepository.findOne(tableName);
        CLColumnDto dto = new CLColumnDto();
        clColumnDTOMapper.toDto(clColumn, dto);
        return dto;
    }

    public List<CLColumnDto> getColumns() {
        List<CLColumn> clColumns = columnRepository.findAll();
        List<CLColumnDto> clColumnDtos = new ArrayList<>();
        for (CLColumn column : clColumns) {
            CLColumnDto dto = new CLColumnDto();
            clColumnDTOMapper.toDto(column, dto);
            clColumnDtos.add(dto);
        }
        return clColumnDtos;
    }

    public void addCL(String tableName, CLDto clDto, Long id) throws Exception {
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

    public CLDto getCL(String tableName, long id) {
        CLDto dto = new CLDto();

        switch (tableName) {
            case "cl_app_administrative_characteristic_types": {
                CLAppAdministrativeCharacteristicType entity = getAppAdministrativeCharacteristicType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_company_position_types": {
                CLAppCompanyPositionType entity = getAppCompanyPositionType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_contract_types": {
                CLAppContractType entity = getAppContractType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_debt_types": {
                CLAppDebtType entity = getAppDebtType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_declaration_sources_types": {
                CLAppDeclarationSourcesType entity = getAppDeclarationSourcesType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_deduction_salary_types": {
                CLAppDeductionSalaryType entity = getAppDeductionSalaryType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_energy_types": {
                CLAppEnergyType entity = getAppEnergyType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_engine_roles": {
                CLAppEngineRole entity = getAppEngineRole(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_engine_types": {
                CLAppEngineType entity = getAppEngineType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_entity_document_types": {
                CLAppEntityDocumentTypes entity = getAppEntityDocumentType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_entity_types": {
                CLAppEntityType entity = getAppEntityType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_fresh_water_sypply_types": {
                CLAppFreshWaterSypplyType entity = getAppFreshWaterSypplyType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_get_back_financial_deposit_reasons": {
                CLAppGetBackFinancialDepositReason entity = getAppGetBackFinancialDepositReason(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_hazardous_training_types": {
                CLAppHazardousTrainingType entity = getAppHazardousTrainingType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_hazardous_work_type": {
                CLAppHazardousWorkType entity = getAppHazardousWorkType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_hiring_restriction_types": {
                CLAppHiringRestrictionType entity = getAppHiringRestrictionType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_hull_types": {
                CLAppHullType entity = getAppHullType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_hvhe_expension_types": {
                CLAppHvHeExpensionType entity = getAppHvHeExpensionType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_legal_status": {
                CLAppLegalStatus entity = getAppLegalStatus(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_license_types": {
                CLAppLicenseType entity = getAppLicenceType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_location_types": {
                CLAppLocationType entity = getAppLocationType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_locations": {
                CLAppLocation entity = getAppLocation(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_measure_types": {
                CLAppMeasureType entity = getAppMeasureType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_no_early_termination_contract_reasons": {
                CLAppNoEarlyTerminationContractReason entity = getAppNoEarlyTerminationContractReason(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_payment_debt_types": {
                CLAppPaymentDebtType entity = getAppPaymentDebtType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_payment_frequencies": {
                CLAppPaymentFrequency entity = getAppPaymentFrequency(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_power_units": {
                CLAppPowerUnit entity = getAppPowerUnit(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_prod_data_entry_types": {
                CLAppProdDataEntryType entity = getAppProDataEntryType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_propulsion_types": {
                CLAppPropulsionType entity = getAppPropulsionType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_quantity_unit_types": {
                CLAppQuantityUnitType entity = getAppQuantityUnitType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_quantity_units": {
                CLAppQuantityUnit entity = getAppQuantityUnit(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_questionnaire_answers": {
                CLAppQuestionnaireAnswer entity = getAppQuestionnaireAnswer(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_soil_analysis_types": {
                CLAppSoilAnalysisType entity = getAppSoilAnalysisType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_staff_declaration_types": {
                CLAppStaffDeclarationType entity = getAppStaffDeclarationType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_termination_contract_reasons": {
                CLAppTerminationContractReason entity = getAppTerminationContractReason(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_tiling_activity_types": {
                CLAppTilingActivityType entity = getAppTilingActivityType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_vessel_characteristics": {
                CLAppVesselCharacteristic entity = getAppVesselCharacteristic(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_vessel_equipment_types": {
                CLAppVesselEquipmentType entity = getAppVesselEquipmentType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_vessel_historical_characteristic_types": {
                CLAppVesselHistoricalCharacteristicType entity = getAppVesselHistoricalCharacteristicType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_vessel_operational_status": {
                CLAppVesselOperationalStatus entity = getAppVesselOperationalStatus(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_app_water_supply_types": {
                CLAppWaterSupplyType entity = getAppWaterSupplyType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_farm_building_types": {
                CLFarmBuildingType entity = getFarmBuildingType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_farm_plot_activity_types": {
                CLFarmPlotActivityType entity = getFarmPlotActivityType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_farm_pond_activity_types": {
                CLFarmPondActivityType entity = getFarmPondActivityType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_farm_pond_types": {
                CLFarmPondType entity = getFarmPondType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_farm_production_types": {
                CLFarmProductionType entity = getFarmProductionType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_farm_types": {
                CLFarmType entity = getFarmType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_fish_fishing_types": {
                CLFishFishingType entity = getFishFishingType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_fish_fishing_zones": {
                CLFishFishingZone entity = getFishFishingZone(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_admin_level_1": {
                CLRefAdminLevel1 entity = getRefAdminLevel1(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_admin_level_2": {
                CLRefAdminLevel2 entity = getRefAdminLevel2(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_commodities": {
                CLRefCommodity entity = getRefCommodity(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_countries": {
                CLRefCountry entity = getRefCountry(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_currencies": {
                CLRefCurrency entity = getRefCurrency(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_declaration_sources": {
                CLRefDeclarationSource entity = getRefDeclarationSource(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_gear_characteristics": {
                CLRefGearCharacteristic entity = getRefGearCharacteristic(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_gears": {
                CLRefGear entity = getRefGear(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_landing_sites": {
                CLRefLandingSite entity = getRefLandingSite(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_languages": {
                CLRefLanguage entity = getRefLanguage(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_languages_countries": {
                CLRefLanguageCountry entity = getRefLanguageCountry(159, 205);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_product_types": {
                CLRefProductType entity = getRefProductType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_products": {
                CLRefProduct entity = getRefProduct(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_regions": {
                CLRefRegion entity = getRefRegion(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_species": {
                CLRefSpecies entity = getRefSpechie(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            case "cl_ref_vessel_types": {
                CLRefVesselType entity = getRefVesselType(id);
                cldtoMapper.toDto(entity, dto);
                return dto;
            }
            default:
                return dto;
        }
    }

    public List<CLDto> getCLs(String tableName) {
        List<CLDto> clDtos = new ArrayList<>();
        switch (tableName) {
            case "cl_app_administrative_characteristic_types": {
                List<CLAppAdministrativeCharacteristicType> entities = getAppAdministrativeCharacteristicTypes();
                for (CLAppAdministrativeCharacteristicType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_company_position_types": {
                List<CLAppCompanyPositionType> entities = getAppCompanyPositionTypes();
                for (CLAppCompanyPositionType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_contract_types": {
                List<CLAppContractType> entities = getAppContractTypes();
                for (CLAppContractType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_debt_types": {
                List<CLAppDebtType> entities = getAppDebtTypes();
                for (CLAppDebtType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_declaration_sources_types": {
                List<CLAppDeclarationSourcesType> entities = getAppDeclarationSourcesTypes();
                for (CLAppDeclarationSourcesType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_deduction_salary_types": {
                List<CLAppDeductionSalaryType> entities = getAppDeductionSalaryTypes();
                for (CLAppDeductionSalaryType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_energy_types": {
                List<CLAppEnergyType> entities = getAppEnergyTypes();
                for (CLAppEnergyType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_engine_roles": {
                List<CLAppEngineRole> entities = getAppEngineRoles();
                for (CLAppEngineRole entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_engine_types": {
                List<CLAppEngineType> entities = getAppEngineTypes();
                for (CLAppEngineType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_entity_document_types": {
                List<CLAppEntityDocumentTypes> entities = getAppEntityDocumentTypes();
                for (CLAppEntityDocumentTypes entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_entity_types": {
                List<CLAppEntityType> entities = getAppEntityTypes();
                for (CLAppEntityType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_fresh_water_sypply_types": {
                List<CLAppFreshWaterSypplyType> entities = getAppFreshWaterSypplyTypes();
                for (CLAppFreshWaterSypplyType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_get_back_financial_deposit_reasons": {
                List<CLAppGetBackFinancialDepositReason> entities = getAppGetBackFinancialDepositReasons();
                for (CLAppGetBackFinancialDepositReason entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_hazardous_training_types": {
                List<CLAppHazardousTrainingType> entities = getAppHazardousTrainingTypes();
                for (CLAppHazardousTrainingType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_hazardous_work_type": {
                List<CLAppHazardousWorkType> entities = getAppHazardousWorkTypes();
                for (CLAppHazardousWorkType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_hiring_restriction_types": {
                List<CLAppHiringRestrictionType> entities = getAppHiringRestrictionTypes();
                for (CLAppHiringRestrictionType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_hull_types": {
                List<CLAppHullType> entities = getAppHullTypes();
                for (CLAppHullType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_hvhe_expension_types": {
                List<CLAppHvHeExpensionType> entities = getAppHvHeExpensionTypes();
                for (CLAppHvHeExpensionType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_legal_status": {
                List<CLAppLegalStatus> entities = getAppLegalStatus();
                for (CLAppLegalStatus entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_license_types": {
                List<CLAppLicenseType> entities = getAppLicenceTypes();
                for (CLAppLicenseType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_location_types": {
                List<CLAppLocationType> entities = getAppLocationTypes();
                for (CLAppLocationType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_locations": {
                List<CLAppLocation> entities = getAppLocations();
                for (CLAppLocation entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_measure_types": {
                List<CLAppMeasureType> entities = getAppMeasureTypes();
                for (CLAppMeasureType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_no_early_termination_contract_reasons": {
                List<CLAppNoEarlyTerminationContractReason> entities = getAppNoEarlyTerminationContractReasons();
                for (CLAppNoEarlyTerminationContractReason entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_payment_debt_types": {
                List<CLAppPaymentDebtType> entities = getAppPaymentDebtTypes();
                for (CLAppPaymentDebtType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_payment_frequencies": {
                List<CLAppPaymentFrequency> entities = getAppPaymentFrequencies();
                for (CLAppPaymentFrequency entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_power_units": {
                List<CLAppPowerUnit> entities = getAppPowerUnits();
                for (CLAppPowerUnit entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_prod_data_entry_types": {
                List<CLAppProdDataEntryType> entities = getAppProDataEntryTypes();
                for (CLAppProdDataEntryType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_propulsion_types": {
                List<CLAppPropulsionType> entities = getAppPropulsionTypes();
                for (CLAppPropulsionType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_quantity_unit_types": {
                List<CLAppQuantityUnitType> entities = getAppQuantityUnitTypes();
                for (CLAppQuantityUnitType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_quantity_units": {
                List<CLAppQuantityUnit> entities = getAppQuantityUnits();
                for (CLAppQuantityUnit entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_questionnaire_answers": {
                List<CLAppQuestionnaireAnswer> entities = getAppQuestionnaireAnswers();
                for (CLAppQuestionnaireAnswer entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_soil_analysis_types": {
                List<CLAppSoilAnalysisType> entities = getAppSoilAnalysisTypes();
                for (CLAppSoilAnalysisType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_staff_declaration_types": {
                List<CLAppStaffDeclarationType> entities = getAppStaffDeclarationTypes();
                for (CLAppStaffDeclarationType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_termination_contract_reasons": {
                List<CLAppTerminationContractReason> entities = getAppTerminationContractReasons();
                for (CLAppTerminationContractReason entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_tiling_activity_types": {
                List<CLAppTilingActivityType> entities = getAppTilingActivityTypes();
                for (CLAppTilingActivityType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_vessel_characteristics": {
                List<CLAppVesselCharacteristic> entities = getAppVesselCharacteristics();
                for (CLAppVesselCharacteristic entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_vessel_equipment_types": {
                List<CLAppVesselEquipmentType> entities = getAppVesselEquipmentTypes();
                for (CLAppVesselEquipmentType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_vessel_historical_characteristic_types": {
                List<CLAppVesselHistoricalCharacteristicType> entities = getAppVesselHistoricalCharacteristicTypes();
                for (CLAppVesselHistoricalCharacteristicType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_vessel_operational_status": {
                List<CLAppVesselOperationalStatus> entities = getAppVesselOperationalStatus();
                for (CLAppVesselOperationalStatus entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_app_water_supply_types": {
                List<CLAppWaterSupplyType> entities = getAppWaterSupplyTypes();
                for (CLAppWaterSupplyType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_farm_building_types": {
                List<CLFarmBuildingType> entities = getFarmBuildingTypes();
                for (CLFarmBuildingType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_farm_plot_activity_types": {
                List<CLFarmPlotActivityType> entities = getFarmPlotActivityTypes();
                for (CLFarmPlotActivityType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_farm_pond_activity_types": {
                List<CLFarmPondActivityType> entities = getFarmPondActivityTypes();
                for (CLFarmPondActivityType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_farm_pond_types": {
                List<CLFarmPondType> entities = getFarmPondTypes();
                for (CLFarmPondType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_farm_production_types": {
                List<CLFarmProductionType> entities = getFarmProductionTypes();
                for (CLFarmProductionType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_farm_types": {
                List<CLFarmType> entities = getFarmTypes();
                for (CLFarmType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_fish_fishing_types": {
                List<CLFishFishingType> entities = getFishFishingTypes();
                for (CLFishFishingType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_fish_fishing_zones": {
                List<CLFishFishingZone> entities = getFishFishingZones();
                for (CLFishFishingZone entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_admin_level_1": {
                List<CLRefAdminLevel1> entities = getRefAdminLevel1();
                for (CLRefAdminLevel1 entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_admin_level_2": {
                List<CLRefAdminLevel2> entities = getRefAdminLevel2();
                for (CLRefAdminLevel2 entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_commodities": {
                List<CLRefCommodity> entities = getRefCommodities();
                for (CLRefCommodity entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_countries": {
                List<CLRefCountry> entities = getRefCountries();
                for (CLRefCountry entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_currencies": {
                List<CLRefCurrency> entities = getRefCurrencies();
                for (CLRefCurrency entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_declaration_sources": {
                List<CLRefDeclarationSource> entities = getRefDeclarationSources();
                for (CLRefDeclarationSource entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_gear_characteristics": {
                List<CLRefGearCharacteristic> entities = getRefGearCharacteristics();
                for (CLRefGearCharacteristic entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_gears": {
                List<CLRefGear> entities = getRefGears();
                for (CLRefGear entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_landing_sites": {
                List<CLRefLandingSite> entities = getRefLandingSites();
                for (CLRefLandingSite entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_languages": {
                List<CLRefLanguage> entities = getRefLanguages();
                for (CLRefLanguage entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_languages_countries": {
                List<CLRefLanguageCountry> entities = getRefLanguageCountries();
                for (CLRefLanguageCountry entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_product_types": {
                List<CLRefProductType> entities = getRefProductTypes();
                for (CLRefProductType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_products": {
                List<CLRefProduct> entities = getRefProducts();
                for (CLRefProduct entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_regions": {
                List<CLRefRegion> entities = getRefRegions();
                for (CLRefRegion entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_species": {
                List<CLRefSpecies> entities = getRefSpechies();
                for (CLRefSpecies entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
            case "cl_ref_vessel_types": {
                List<CLRefVesselType> entities = getRefVesselTypes();
                for (CLRefVesselType entity : entities) {
                    CLDto dto = new CLDto();
                    cldtoMapper.toDto(entity, dto);
                    clDtos.add(dto);
                }
                break;
            }
        }

        return clDtos;
    }

    public void deleteCL(String tableName, Long id) {
        switch (tableName) {
            case "cl_app_administrative_characteristic_types":
                appAdministrativeCharacteristicTypeRepository.delete(id);
                break;
            case "cl_app_company_position_types":
                appCompanyPositionTypeRepository.delete(id);
                break;
            case "cl_app_contract_types":
                appContractTypesRepository.delete(id);
                break;
            case "cl_app_debt_types":
                appDebtTypeRepository.delete(id);
                break;
            case "cl_app_declaration_sources_types":
                appDeclarationSourcesTypeRepository.delete(id);
                break;
            case "cl_app_deduction_salary_types":
                appDeductionSalaryTypeRepository.delete(id);
                break;
            case "cl_app_energy_types":
                appEnergyTypeRepository.delete(id);
                break;
            case "cl_app_engine_roles":
                appEngineRoleRepository.delete(id);
                break;
            case "cl_app_engine_types":
                appEngineTypeRepository.delete(id);
                break;
            case "cl_app_entity_document_types":
                appEntityDocumentTypesRepository.delete(id);
                break;
            case "cl_app_entity_types":
                appEntityTypeRepository.delete(id);
                break;
            case "cl_app_fresh_water_sypply_types":
                appFreshWaterSypplyTypeRepository.delete(id);
                break;
            case "cl_app_get_back_financial_deposit_reasons":
                appGetBackFinancialDepositReasonRepository.delete(id);
                break;
            case "cl_app_hazardous_training_types":
                appHazardousTrainingTypeRepository.delete(id);
                break;
            case "cl_app_hazardous_work_type":
                appHazardousWorkTypeRepository.delete(id);
                break;
            case "cl_app_hiring_restriction_types":
                appHiringRestrictionTypeRepository.delete(id);
                break;
            case "cl_app_hull_types":
                appHullTypeRepository.delete(id);
                break;
            case "cl_app_hvhe_expension_types":
                appHvHeExpensionTypeRepository.delete(id);
                break;
            case "cl_app_legal_status":
                appLegalStatusRepository.delete(id);
                break;
            case "cl_app_license_types":
                appLicenseTypeRepository.delete(id);
                break;
            case "cl_app_location_types":
                appLocationTypeRepository.delete(id);
                break;
            case "cl_app_locations":
                appLocationRepository.delete(id);
                break;
            case "cl_app_measure_types":
                appMeasureTypeRepository.delete(id);
                break;
            case "cl_app_no_early_termination_contract_reasons":
                appNoEarlyTerminationContractReasonRepository.delete(id);
                break;
            case "cl_app_payment_debt_types":
                appPaymentDebtTypeRepository.delete(id);
                break;
            case "cl_app_payment_frequencies":
                appPaymentFrequencyRepository.delete(id);
                break;
            case "cl_app_power_units":
                appPowerUnitRepository.delete(id);
                break;
            case "cl_app_prod_data_entry_types":
                appProdDataEntryTypeRepository.delete(id);
                break;
            case "cl_app_propulsion_types":
                appPropulsionTypeRepository.delete(id);
                break;
            case "cl_app_quantity_unit_types":
                appQuantityUnitTypeRepository.delete(id);
                break;
            case "cl_app_quantity_units":
                appQuantityUnitRepository.delete(id);
                break;
            case "cl_app_questionnaire_answers":
                appQuestionnaireAnswerRepository.delete(id);
                break;
            case "cl_app_soil_analysis_types":
                appSoilAnalysisTypeRepository.delete(id);
                break;
            case "cl_app_staff_declaration_types":
                appStaffDeclarationTypeRepository.delete(id);
                break;
            case "cl_app_termination_contract_reasons":
                appTerminationContractReasonRepository.delete(id);
                break;
            case "cl_app_tiling_activity_types":
                appTilingActivityTypeRepository.delete(id);
                break;
            case "cl_app_vessel_characteristics":
                appVesselCharacteristicRepository.delete(id);
                break;
            case "cl_app_vessel_equipment_types":
                appVesselEquipmentTypeRepository.delete(id);
                break;
            case "cl_app_vessel_historical_characteristic_types":
                appVesselHistoricalCharacteristicTypeRepository.delete(id);
                break;
            case "cl_app_vessel_operational_status":
                appVesselOperationalStatusRepository.delete(id);
                break;
            case "cl_app_water_supply_types":
                appWaterSupplyTypeRepository.delete(id);
                break;
            case "cl_farm_building_types":
                farmBuildingTypeRepository.delete(id);
                break;
            case "cl_farm_plot_activity_types":
                farmPlotActivityTypesRepository.delete(id);
                break;
            case "cl_farm_pond_activity_types":
                farmPondActivityTypesRepository.delete(id);
                break;
            case "cl_farm_pond_types":
                farmPondTypesRepository.delete(id);
                break;
            case "cl_farm_production_types":
                farmProductionTypeRepository.delete(id);
                break;
            case "cl_farm_types":
                farmTypeRepository.delete(id);
                break;
            case "cl_fish_fishing_types":
                fishFishingTypeRepository.delete(id);
                break;
            case "cl_fish_fishing_zones":
                fishFishingZoneRepository.delete(id);
                break;
            case "cl_ref_admin_level_1":
                refAdminLevel1Repository.delete(id);
                break;
            case "cl_ref_admin_level_2":
                refAdminLevel2Repository.delete(id);
                break;
            case "cl_ref_commodities":
                refCommodityRepository.delete(id);
                break;
            case "cl_ref_countries":
                refCountryRepository.delete(id);
                break;
            case "cl_ref_currencies":
                refCurrencyRepository.delete(id);
                break;
            case "cl_ref_declaration_sources":
                refDeclarationSourceRepository.delete(id);
                break;
            case "cl_ref_gear_characteristics":
                refGearCharacteristicRepository.delete(id);
                break;
            case "cl_ref_gears":
                refGearRepository.delete(id);
                break;
            case "cl_ref_landing_sites":
                refLandingSiteRepository.delete(id);
                break;
            case "cl_ref_languages":
                refLanguageRepository.delete(id);
                break;
            case "cl_ref_product_types":
                refProductTypesRepository.delete(id);
                break;
            case "cl_ref_products":
                refProductRepository.delete(id);
                break;
            case "cl_ref_regions":
                refRegionRepository.delete(id);
                break;
            case "cl_ref_species":
                refSpeciesRepository.delete(id);
                break;
            case "cl_ref_vessel_types":
                refVesselTypeRepository.delete(id);
                break;
        }
    }

    /***** For cl_ref_languages_countries table only *****/

    public void addCL(CLDto clDto, Long languageId, Long countryId) throws Exception{
        CLRefLanguageCountry newCL;
        if (languageId != null && countryId != null) {
            newCL = refLanguageCountryRepository.findOne(new LanguageCountryKey(languageId, countryId));
        } else {
            newCL = new CLRefLanguageCountry();
        }
        cldtoMapper.fillEntity(clDto, newCL);
        refLanguageCountryRepository.save(newCL);
    }

    public CLDto getCL(long languageId, long countryId) {
        CLDto dto = new CLDto();
        CLRefLanguageCountry entity = getRefLanguageCountry(languageId, countryId);
        cldtoMapper.toDto(entity, dto);
        return dto;
    }

    public List<CLDto> getCLs() {
        List<CLDto> clDtos = new ArrayList<>();
        List<CLRefLanguageCountry> entities = getRefLanguageCountries();
        for (CLRefLanguageCountry entity : entities) {
            CLDto dto = new CLDto();
            cldtoMapper.toDto(entity, dto);
            clDtos.add(dto);
        }
        return clDtos;
    }

    public void deleteCL(long languageId, long countryId) {
        refLanguageCountryRepository.delete(new LanguageCountryKey(languageId, countryId));
    }
}