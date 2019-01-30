package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.domain.cl.*;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityProductSupplierRepository;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;
import org.mapstruct.*;

@Mapper(componentModel = "spring",  uses = EntityDtoMapper.class, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CLDTOMapper {

    void toDto(CLAppAdministrativeCharacteristicType clAppAdministrativeCharacteristicType, @MappingTarget CLDto dto);

    void toDto(CLAppCompanyPositionType clAppCompanyPositionType, @MappingTarget CLDto dto);

    void toDto(CLAppContractType clAppContractType, @MappingTarget CLDto dto);

    void toDto(CLAppDebtType clAppDebtType, @MappingTarget CLDto dto);

    void toDto(CLAppDeclarationSourcesType clAppDeclarationSourcesType, @MappingTarget CLDto dto);

    void toDto(CLAppDeductionSalaryType clAppDeductionSalaryType, @MappingTarget CLDto dto);

    void toDto(CLAppEnergyType clAppEnergyType, @MappingTarget CLDto dto);

    void toDto(CLAppEngineRole clAppEngineRole, @MappingTarget CLDto dto);

    void toDto(CLAppEngineType clAppEngineType, @MappingTarget CLDto dto);

    void toDto(CLAppEntityDocumentTypes clAppEntityDocumentTypes, @MappingTarget CLDto dto);

    void toDto(CLAppEntityType clAppEntityType, @MappingTarget CLDto dto);

    void toDto(CLAppFreshWaterSypplyType clAppFreshWaterSypplyType, @MappingTarget CLDto dto);

    void toDto(CLAppGetBackFinancialDepositReason clAppGetBackFinancialDepositReason, @MappingTarget CLDto dto);

    void toDto(CLAppHazardousTrainingType clAppHazardousTrainingType, @MappingTarget CLDto dto);

    void toDto(CLAppHazardousWorkType clAppHazardousWorkType, @MappingTarget CLDto dto);

    void toDto(CLAppHiringRestrictionType clAppHiringRestrictionType, @MappingTarget CLDto dto);

    void toDto(CLAppHullType clAppHullType, @MappingTarget CLDto dto);

    void toDto(CLAppHvHeExpensionType clAppHvHeExpensionType, @MappingTarget CLDto dto);

    void toDto(CLAppLegalStatus clAppLegalStatus, @MappingTarget CLDto dto);

    void toDto(CLAppLicenseType clAppLicenseType, @MappingTarget CLDto dto);

    void toDto(CLAppLocation clAppLocation, @MappingTarget CLDto dto);

    void toDto(CLAppLocationType clAppLocationType, @MappingTarget CLDto dto);

    void toDto(CLAppMeasureType clAppMeasureType, @MappingTarget CLDto dto);

    void toDto(CLAppNoEarlyTerminationContractReason clAppNoEarlyTerminationContractReason, @MappingTarget CLDto dto);

    void toDto(CLAppPaymentDebtType clAppPaymentDebtType, @MappingTarget CLDto dto);

    void toDto(CLAppPaymentFrequency clAppPaymentFrequency, @MappingTarget CLDto dto);

    void toDto(CLAppPowerUnit clAppPowerUnit, @MappingTarget CLDto dto);

    void toDto(CLAppProdDataEntryType clAppProdDataEntryType, @MappingTarget CLDto dto);

    void toDto(CLAppPropulsionType clAppPropulsionType, @MappingTarget CLDto dto);

    void toDto(CLAppQuantityUnit clAppQuantityUnit, @MappingTarget CLDto dto);

    void toDto(CLAppQuantityUnitType clAppQuantityUnitType, @MappingTarget CLDto dto);

    void toDto(CLAppQuestionnaireAnswer clAppQuestionnaireAnswer, @MappingTarget CLDto dto);

    void toDto(CLAppSoilAnalysisType clAppSoilAnalysisType, @MappingTarget CLDto dto);

    void toDto(CLAppStaffDeclarationType clAppStaffDeclarationType, @MappingTarget CLDto dto);

    void toDto(CLAppTerminationContractReason clAppTerminationContractReason, @MappingTarget CLDto dto);

    void toDto(CLAppTilingActivityType clAppTilingActivityType, @MappingTarget CLDto dto);

    void toDto(CLAppVesselCharacteristic clAppVesselCharacteristic, @MappingTarget CLDto dto);

    void toDto(CLAppVesselEquipmentType clAppVesselEquipmentType, @MappingTarget CLDto dto);

    void toDto(CLAppVesselHistoricalCharacteristicType clAppVesselHistoricalCharacteristicType, @MappingTarget CLDto dto);

    void toDto(CLAppVesselOperationalStatus clAppVesselOperationalStatus, @MappingTarget CLDto dto);

    void toDto(CLAppWaterSupplyType clAppWaterSupplyType, @MappingTarget CLDto dto);

    void toDto(CLFarmBuildingType clFarmBuildingType, @MappingTarget CLDto dto);

    void toDto(CLFarmPlotActivityType clFarmPlotActivityType, @MappingTarget CLDto dto);

    void toDto(CLFarmPondActivityType clFarmPondActivityType, @MappingTarget CLDto dto);

    void toDto(CLFarmPondType clFarmPondType, @MappingTarget CLDto dto);

    void toDto(CLFarmProductionType clFarmProductionType, @MappingTarget CLDto dto);

    void toDto(CLFarmType clFarmType, @MappingTarget CLDto dto);

    void toDto(CLFishFishingType clFishFishingType, @MappingTarget CLDto dto);

    void toDto(CLFishFishingZone clFishFishingZone, @MappingTarget CLDto dto);

    void toDto(CLRefAdminLevel1 clRefAdminLevel1, @MappingTarget CLDto dto);

    void toDto(CLRefAdminLevel2 clRefAdminLevel2, @MappingTarget CLDto dto);

    void toDto(CLRefCommodity clRefCommodity, @MappingTarget CLDto dto);

    void toDto(CLRefCountry clRefCountry, @MappingTarget CLDto dto);

    void toDto(CLRefCurrency clRefCurrency, @MappingTarget CLDto dto);

    void toDto(CLRefDeclarationSource clRefDeclarationSource, @MappingTarget CLDto dto);

    void toDto(CLRefGear clRefGear, @MappingTarget CLDto dto);

    void toDto(CLRefGearCharacteristic clRefGearCharacteristic, @MappingTarget CLDto dto);

    void toDto(CLRefLandingSite clRefLandingSite, @MappingTarget CLDto dto);

    void toDto(CLRefLanguage clRefLanguage, @MappingTarget CLDto dto);

    void toDto(CLRefLanguageCountry clRefLanguageCountry, @MappingTarget CLDto dto);

    void toDto(CLRefProduct clRefProduct, @MappingTarget CLDto dto);

    void toDto(CLRefProductType clRefProductType, @MappingTarget CLDto dto);

    void toDto(CLRefRegion clRefRegion, @MappingTarget CLDto dto);

    void toDto(CLRefSpecies clRefSpecies, @MappingTarget CLDto dto);

    void toDto(CLRefVesselType clRefVesselType, @MappingTarget CLDto dto);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppAdministrativeCharacteristicType clAppAdministrativeCharacteristicType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppCompanyPositionType clAppCompanyPositionType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppContractType clAppContractType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppDebtType clAppDebtType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppDeclarationSourcesType clAppDeclarationSourcesType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppDeductionSalaryType clAppDeductionSalaryType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppEnergyType clAppEnergyType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppEngineRole clAppEngineRole);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppEngineType clAppEngineType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppEntityDocumentTypes clAppEntityDocumentTypes);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppEntityType clAppEntityType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppFreshWaterSypplyType clAppFreshWaterSypplyType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppGetBackFinancialDepositReason clAppGetBackFinancialDepositReason);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppHazardousTrainingType clAppHazardousTrainingType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppHazardousWorkType clAppHazardousWorkType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppHiringRestrictionType clAppHiringRestrictionType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppHullType clAppHullType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppHvHeExpensionType clAppHvHeExpensionType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppLegalStatus clAppLegalStatus);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppLicenseType clAppLicenseType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppLocation clAppLocation);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppLocationType clAppLocationType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppMeasureType clAppMeasureType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppNoEarlyTerminationContractReason clAppNoEarlyTerminationContractReason);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppPaymentDebtType clAppPaymentDebtType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppPaymentFrequency clAppPaymentFrequency);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppPowerUnit clAppPowerUnit);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppProdDataEntryType clAppProdDataEntryType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppPropulsionType clAppPropulsionType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppQuantityUnit clAppQuantityUnit);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppQuantityUnitType clAppQuantityUnitType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppQuestionnaireAnswer clAppQuestionnaireAnswer);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppSoilAnalysisType clAppSoilAnalysisType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppStaffDeclarationType clAppStaffDeclarationType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppTerminationContractReason clAppTerminationContractReason);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppTilingActivityType clAppTilingActivityType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppVesselCharacteristic clAppVesselCharacteristic);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppVesselEquipmentType clAppVesselEquipmentType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppVesselHistoricalCharacteristicType clAppVesselHistoricalCharacteristicType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppVesselOperationalStatus clAppVesselOperationalStatus);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppWaterSupplyType clAppWaterSupplyType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLFarmBuildingType clFarmBuildingType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLFarmPlotActivityType clFarmPlotActivityType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLFarmPondActivityType clFarmPondActivityType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLFarmPondType clFarmPondType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLFarmProductionType clFarmProductionType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLFarmType clFarmType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLFishFishingType clFishFishingType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLFishFishingZone clFishFishingZone);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefAdminLevel1 clRefAdminLevel1);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefAdminLevel2 clRefAdminLevel2);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefCommodity clRefCommodity);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefCountry clRefCountry);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefCurrency clRefCurrency);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefDeclarationSource clRefDeclarationSource);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefGear clRefGear);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefGearCharacteristic clRefGearCharacteristic);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefLandingSite clRefLandingSite);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefLanguage clRefLanguage);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefLanguageCountry clRefLanguageCountry);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefProduct clRefProduct);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefProductType clRefProductType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefRegion clRefRegion);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefSpecies clRefSpecies);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefVesselType clRefVesselType);



}