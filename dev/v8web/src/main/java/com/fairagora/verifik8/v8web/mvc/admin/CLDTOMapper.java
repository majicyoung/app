package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppLegalStatus;
import com.fairagora.verifik8.v8web.data.domain.cl.CodeListSupport;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = EntityDtoMapper.class, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CLDTOMapper {

    void toDto(CodeListSupport codeListSupport, @MappingTarget CLDto dto);

    void toDto(CLAppEntityType clAppEntityType, @MappingTarget CLDto dto);

    void toDto(CLAppLegalStatus clAppLegalStatus, @MappingTarget CLDto dto);

    @Mapping(target = "id", ignore = true)
    void fillEntity(CLDto dto, @MappingTarget CodeListSupport codeListSupport);

}