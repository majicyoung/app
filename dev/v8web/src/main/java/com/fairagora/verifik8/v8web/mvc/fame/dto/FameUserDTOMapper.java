package com.fairagora.verifik8.v8web.mvc.fame.dto;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;
import com.fairagora.verifik8.v8web.mvc.users.dto.RoleFormDto;
import com.fairagora.verifik8.v8web.mvc.users.dto.UserFormDto;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Mapper(componentModel = "spring", uses = {EntityDtoMapper.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE, imports = {BCryptPasswordEncoder.class})
public interface FameUserDTOMapper {

	void toDto(SYSUser user, @MappingTarget FameUserDto dto);

	FameUserDto toListing(SYSUser p);

}
