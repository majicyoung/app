package com.fairagora.verifik8.v8web.services.enhanced.dtomapping;

import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;

import javax.annotation.Generated;

import org.springframework.stereotype.Component;

@Generated(

    value = "org.mapstruct.ap.MappingProcessor",

    date = "2017-11-02T01:00:35+0100",

    comments = "version: 1.1.0.Final, compiler: javac, environment: Java 1.8.0_112 (Oracle Corporation)"

)

@Component

public class V8EnhancedDtoMapperImpl implements V8EnhancedDtoMapper {

    @Override

    public void enhance(RegEntity e, V8Farm f) {

        if ( e == null ) {

            return;
        }

        f.setName( e.getName() );

        f.setId( e.getId() );

        f.setPhoneNumber( e.getPhoneNumber() );

        f.setMobileNumber( e.getMobileNumber() );

        f.setFaxNumber( e.getFaxNumber() );

        f.setEmail( e.getEmail() );

        f.setWebsite( e.getWebsite() );

        f.setAddress( e.getAddress() );
    }
}

