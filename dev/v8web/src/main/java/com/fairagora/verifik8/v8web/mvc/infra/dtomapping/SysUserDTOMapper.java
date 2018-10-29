package com.fairagora.verifik8.v8web.mvc.infra.dtomapping;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.mvc.users.dto.RoleFormDto;
import com.fairagora.verifik8.v8web.mvc.users.dto.UserFormDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Mapper(componentModel = "spring", uses = {EntityDtoMapper.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE, imports = {BCryptPasswordEncoder.class})
public interface SysUserDTOMapper {

	@Mapping(target = "password",
			expression = "java( new BCryptPasswordEncoder(11).encode(dto.getPassword()) )")
	void fillEntity(UserFormDto dto, @MappingTarget SYSUser user);

    void toDto(SYSUser user, @MappingTarget UserFormDto dto);

    @Mapping(target = "password", ignore = true)
    void fillEntityIgnorePassword(UserFormDto dto, @MappingTarget SYSUser user);

    void toDto(SYSRole findOne, @MappingTarget RoleFormDto dto);

    @Mapping(target = "id", ignore = true)
    void fillEntity(RoleFormDto dto, @MappingTarget SYSRole u);

}
