package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.domain.cl.*;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = EntityDtoMapper.class, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CLDTOMapper {

    void toDto(BaseCodeListSupport baseCodeListSupport, @MappingTarget CLDto dto);

    void toDto(CodeListSupport codeListSupport, @MappingTarget CLDto dto);

    void toDto(CLAppEntityType clAppEntityType, @MappingTarget CLDto dto);

    void toDto(CLAppHazardousWorkType clAppHazardousWorkType, @MappingTarget CLDto dto);

    void toDto(CLAppHiringRestrictionType clAppHiringRestrictionType, @MappingTarget CLDto clDto);

    void toDto(CLAppLegalStatus clAppLegalStatus, @MappingTarget CLDto dto);

    void toDto(CLAppQuantityUnit clAppQuantityUnit, @MappingTarget CLDto dto);

    void toDto(CLRefAdminLevel2 clRefAdminLevel2, @MappingTarget CLDto dto);

    void toDto(CLRefCommodity clRefCommodity, @MappingTarget CLDto dto);

    void toDto(CLRefCountry clRefCountry, @MappingTarget CLDto dto);

    void toDto(CLRefGearCharacteristic clRefGearCharacteristic, @MappingTarget CLDto dto);

    void toDto(CLRefLandingSite clRefLandingSite, @MappingTarget CLDto dto);

    void toDto(CLRefLanguageCountry clRefLanguageCountry, @MappingTarget CLDto dto);

    void toDto(CLRefProductType clRefProductType, @MappingTarget CLDto dto);

    void toDto(CLRefProduct clRefProduct, @MappingTarget CLDto dto);

    void toDto(CLRefRegion clRefRegion, @MappingTarget CLDto dto);

    void toDto(CLRefSpecies clRefSpecies, @MappingTarget CLDto dto);


    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CodeListSupport codeListSupport);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppEntityType clAppEntityType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppHazardousWorkType clAppHazardousWorkType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppHvHeExpensionType clAppHvHeExpensionType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppLegalStatus clAppLegalStatus);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLAppQuantityUnit clAppQuantityUnit);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefAdminLevel2 clRefAdminLevel2);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefCommodity clRefCommodity);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefCountry clRefCountry);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefGearCharacteristic clRefGearCharacteristic);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefLandingSite clRefLandingSite);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefLanguageCountry clRefLanguageCountry);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefProductType clRefProductType);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefProduct clRefProduct);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefRegion clRefRegion);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CLRefSpecies clRefSpecies);

}