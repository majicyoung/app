package com.fairagora.verifik8.v8web.mvc.infra.dtomapping;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;

import com.fairagora.verifik8.v8web.mvc.users.dto.UserFormDto;

import javax.annotation.Generated;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

@Generated(

    value = "org.mapstruct.ap.MappingProcessor",

    date = "2017-10-31T14:29:44+0100",

    comments = "version: 1.1.0.Final, compiler: javac, environment: Java 1.8.0_112 (Oracle Corporation)"

)

@Component

public class SysUserDTOMapperImpl implements SysUserDTOMapper {

    @Autowired

    private EntityDtoMapper entityDtoMapper;

    @Override

    public void toDto(SYSUser user, UserFormDto dto) {

        if ( user == null ) {

            return;
        }

        dto.setRole( entityDtoMapper.toReference( user.getRole() ) );

        dto.setName( user.getName() );

        dto.setPassword( user.getPassword() );

        dto.setEmail( user.getEmail() );

        dto.setCountry( entityDtoMapper.toReference( user.getCountry() ) );

        dto.setId( user.getId() );
    }

    @Override

    public void fillEntity(UserFormDto dto, SYSUser user) {

        if ( dto == null ) {

            return;
        }

        user.setId( dto.getId() );

        user.setName( dto.getName() );

        user.setEmail( dto.getEmail() );

        user.setPassword( dto.getPassword() );

        user.setRole( entityDtoMapper.resolve( dto.getRole(), SYSRole.class ) );

        user.setCountry( entityDtoMapper.resolve( dto.getCountry(), CLCountry.class ) );
    }
}

