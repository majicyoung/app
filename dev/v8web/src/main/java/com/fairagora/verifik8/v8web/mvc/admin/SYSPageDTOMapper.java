package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSPage;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSSubPage;
import com.fairagora.verifik8.v8web.mvc.admin.dto.SYSPageDto;
import com.fairagora.verifik8.v8web.mvc.admin.dto.SYSSubPageDto;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = EntityDtoMapper.class, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface SYSPageDTOMapper {

    void toDto(SYSPage sysPage, @MappingTarget SYSPageDto dto);

    void toDto(SYSSubPage sysSubPage, @MappingTarget SYSSubPageDto dto);

    @Mapping(target = "id", ignore = true)
    void fillEntity(SYSPageDto dto, @MappingTarget SYSPage sysPage);

    @Mapping(target = "id", ignore = true)
    void fillEntity(SYSSubPageDto dto, @MappingTarget SYSSubPage sysSubPage);

}
