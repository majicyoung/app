package com.fairagora.verifik8.v8web.mvc.farms;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;

import com.fairagora.verifik8.v8web.data.domain.cl.CLPondType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLQuantityUnit;

import com.fairagora.verifik8.v8web.data.domain.cl.CLSpecies;

import com.fairagora.verifik8.v8web.data.domain.commons.Address;

import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;

import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmEnvironmentalDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPondDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffGeneralInfoSto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.AddressDto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

import javax.annotation.Generated;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

@Generated(

    value = "org.mapstruct.ap.MappingProcessor",

    date = "2017-10-31T14:29:44+0100",

    comments = "version: 1.1.0.Final, compiler: javac, environment: Java 1.8.0_112 (Oracle Corporation)"

)

@Component

public class RegFarmDTOMapperImpl implements RegFarmDTOMapper {

    @Autowired

    private EntityDtoMapper entityDtoMapper;

    @Override

    public void toDto(RegEntity farm, FarmFormDto dto) {

        if ( farm == null ) {

            return;
        }

        dto.setId( farm.getId() );

        dto.setName( farm.getName() );

        if ( farm.getAddress() != null ) {

            if ( dto.getAddress() == null ) {

                dto.setAddress( new AddressDto() );
            }

            toDto( farm.getAddress(), dto.getAddress() );
        }

        else {

            dto.setAddress( null );
        }

        dto.setPhoneNumber( farm.getPhoneNumber() );

        dto.setMobileNumber( farm.getMobileNumber() );

        dto.setFaxNumber( farm.getFaxNumber() );

        dto.setEmail( farm.getEmail() );

        dto.setWebsite( farm.getWebsite() );
    }

    @Override

    public void toDto(RegEntityFarmDetails farm, FarmFormDto dto) {

        if ( farm == null ) {

            return;
        }

        dto.setOwner( entityDtoMapper.toReference( farm.getOwner() ) );

        if ( farm.getLongitude() != null ) {

            dto.setLongitude( Float.parseFloat( farm.getLongitude() ) );
        }

        if ( farm.getLatitude() != null ) {

            dto.setLatitude( Float.parseFloat( farm.getLatitude() ) );
        }

        dto.setSize( farm.getSize() );

        dto.setCooperative( entityDtoMapper.toReference( farm.getCooperative() ) );
    }

    @Override

    public void fillEntity(FarmFormDto dto, RegEntity farm) {

        if ( dto == null ) {

            return;
        }

        farm.setId( dto.getId() );

        farm.setName( dto.getName() );

        if ( dto.getAddress() != null ) {

            if ( farm.getAddress() == null ) {

                farm.setAddress( new Address() );
            }

            fillEntity( dto.getAddress(), farm.getAddress() );
        }

        else {

            farm.setAddress( null );
        }

        farm.setPhoneNumber( dto.getPhoneNumber() );

        farm.setMobileNumber( dto.getMobileNumber() );

        farm.setFaxNumber( dto.getFaxNumber() );

        farm.setEmail( dto.getEmail() );

        farm.setWebsite( dto.getWebsite() );
    }

    @Override

    public void fillEntity(FarmFormDto dto, RegEntityFarmDetails farm) {

        if ( dto == null ) {

            return;
        }

        farm.setSize( dto.getSize() );

        farm.setOwner( entityDtoMapper.resolve( dto.getOwner(), RegEntity.class ) );

        if ( dto.getLongitude() != null ) {

            farm.setLongitude( String.valueOf( dto.getLongitude() ) );
        }

        if ( dto.getLatitude() != null ) {

            farm.setLatitude( String.valueOf( dto.getLatitude() ) );
        }

        farm.setCooperative( entityDtoMapper.resolve( dto.getCooperative(), RegEntity.class ) );
    }

    @Override

    public void fillEntity(AddressDto dto, Address adr) {

        if ( dto == null ) {

            return;
        }

        adr.setMain( dto.getMain() );

        adr.setCity( dto.getCity() );

        adr.setZip( dto.getZip() );

        adr.setCountry( entityDtoMapper.resolve( dto.getCountry(), CLCountry.class ) );
    }

    @Override

    public void toDto(RegEntityFarmDetails farm, FarmEnvironmentalDto dto) {

        if ( farm == null ) {

            return;
        }

        dto.setEnvironmentImpactAssessment( farm.isEnvironmentImpactAssessment() );

        dto.setEnvironmentImpactAssessmentUrl( map( farm.getEnvironmentImpactAssessmentUrl() ) );

        dto.setContructionPermit( map( farm.getContructionPermit() ) );

        dto.setLandTitle( map( farm.getLandTitle() ) );

        dto.setFarmExpension( farm.isFarmExpension() );

        dto.setFarmExpensionType( entityDtoMapper.toReference( farm.getFarmExpensionType() ) );

        dto.setCanalRestorationPlan( map( farm.getCanalRestorationPlan() ) );

        dto.setCumulativeImpactStudy( map( farm.getCumulativeImpactStudy() ) );

        dto.setSittingProtectedAreaUrl( map( farm.getSittingProtectedAreaUrl() ) );

        dto.setSittingProtectedArea( farm.isSittingProtectedArea() );
    }

    @Override

    public void toDto(Address adr, AddressDto dto) {

        if ( adr == null ) {

            return;
        }

        dto.setMain( adr.getMain() );

        dto.setCity( adr.getCity() );

        dto.setZip( adr.getZip() );

        dto.setCountry( entityDtoMapper.toReference( adr.getCountry() ) );
    }

    @Override

    public void toDto(RegEntityStaffManagement findByFarmId, StaffGeneralInfoSto dto) {

        if ( findByFarmId == null ) {

            return;
        }

        dto.setFarmId( findByFarmId.getFarmId() );

        dto.setNumberOfStaffAsToday( findByFarmId.getNumberOfStaffAsToday() );

        dto.setNbRestDays( findByFarmId.getNbRestDays() );

        dto.setWorkersRepresentativeGroup( findByFarmId.isWorkersRepresentativeGroup() );

        dto.setExistenceHazardousWork( findByFarmId.isExistenceHazardousWork() );

        dto.setHazardousWorkType( entityDtoMapper.toReference( findByFarmId.getHazardousWorkType() ) );

        dto.setNbWorkersChildLivingInFarm( findByFarmId.getNbWorkersChildLivingInFarm() );

        dto.setNbWorkersChildHelpingInFarm( findByFarmId.getNbWorkersChildHelpingInFarm() );

        dto.setNbWorkersChildEnrolledSchool( findByFarmId.getNbWorkersChildEnrolledSchool() );

        dto.setAccessToProtectiveEquipment( findByFarmId.isAccessToProtectiveEquipment() );

        dto.setExistenceWorkAccidentRecord( findByFarmId.isExistenceWorkAccidentRecord() );

        dto.setWorkAccidentRecord( findByFarmId.getWorkAccidentRecord() );

        dto.setExistenceFarmPolicies( findByFarmId.isExistenceFarmPolicies() );

        dto.setFarmPolicies( findByFarmId.getFarmPolicies() );
    }

    @Override

    public void toDto(RegEntityFarmPond m, FarmPondDto dto) {

        if ( m == null ) {

            return;
        }

        dto.setId( m.getId() );

        dto.setNumber( m.getNumber() );

        dto.setDescription( m.getDescription() );

        dto.setType( entityDtoMapper.toReference( m.getType() ) );

        dto.setSpecies( entityDtoMapper.toReference( m.getSpecies() ) );

        if ( m.getVolume() != null ) {

            if ( dto.getVolume() == null ) {

                dto.setVolume( new V8MeasureDto() );
            }

            toDto( m.getVolume(), dto.getVolume() );
        }

        else {

            dto.setVolume( null );
        }

        dto.setComment( m.getComment() );
    }

    @Override

    public void fillEntity(FarmPondDto dto, RegEntityFarmPond m) {

        if ( dto == null ) {

            return;
        }

        m.setId( dto.getId() );

        m.setType( entityDtoMapper.resolve( dto.getType(), CLPondType.class ) );

        m.setSpecies( entityDtoMapper.resolve( dto.getSpecies(), CLSpecies.class ) );

        if ( dto.getVolume() != null ) {

            if ( m.getVolume() == null ) {

                m.setVolume( new V8Measure() );
            }

            fillEntity( dto.getVolume(), m.getVolume() );
        }

        else {

            m.setVolume( null );
        }

        m.setComment( dto.getComment() );

        m.setNumber( dto.getNumber() );

        m.setDescription( dto.getDescription() );
    }

    @Override

    public void toDto(V8Measure m, V8MeasureDto dto) {

        if ( m == null ) {

            return;
        }

        dto.setQuantity( m.getQuantity() );

        dto.setUnit( entityDtoMapper.toReference( m.getUnit() ) );
    }

    @Override

    public void fillEntity(V8MeasureDto dto, V8Measure m) {

        if ( dto == null ) {

            return;
        }

        m.setQuantity( dto.getQuantity() );

        m.setUnit( entityDtoMapper.resolve( dto.getUnit(), CLQuantityUnit.class ) );
    }
}

