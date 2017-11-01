package com.fairagora.verifik8.v8web.mvc.farms;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCommodities;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;

import com.fairagora.verifik8.v8web.data.domain.cl.CLMeasureType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLPlotActivityType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLPondType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLProduct;

import com.fairagora.verifik8.v8web.data.domain.cl.CLQuantityUnit;

import com.fairagora.verifik8.v8web.data.domain.cl.CLSpecies;

import com.fairagora.verifik8.v8web.data.domain.cl.CLTilingActivityType;

import com.fairagora.verifik8.v8web.data.domain.commons.Address;

import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotMeasurement;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;

import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmEnvironmentalDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPlotDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPondDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffGeneralInfoSto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.AddressDto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotActivityDto;

import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotListingDto;

import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotMeasurementDto;

import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondListingDto;

import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondMeasurementDto;

import javax.annotation.Generated;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

@Generated(

    value = "org.mapstruct.ap.MappingProcessor",

    date = "2017-11-02T00:26:00+0100",

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

        dto.setFarm( entityDtoMapper.toReference( m.getFarm() ) );

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

        m.setFarm( entityDtoMapper.resolve( dto.getFarm(), RegEntity.class ) );

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

    public void toDto(RegEntityFarmPlot m, FarmPlotDto dto) {

        if ( m == null ) {

            return;
        }

        dto.setId( m.getId() );

        dto.setFarm( entityDtoMapper.toReference( m.getFarm() ) );

        dto.setNumber( m.getNumber() );

        dto.setDescription( m.getDescription() );

        dto.setCommodities( entityDtoMapper.toReference( m.getCommodities() ) );

        dto.setIrrigated( m.isIrrigated() );

        if ( m.getSize() != null ) {

            if ( dto.getSize() == null ) {

                dto.setSize( new V8MeasureDto() );
            }

            toDto( m.getSize(), dto.getSize() );
        }

        else {

            dto.setSize( null );
        }
    }

    @Override

    public void toDto(RegEntityFarmPlot m, PlotListingDto dto) {

        if ( m == null ) {

            return;
        }

        dto.setId( m.getId() );

        dto.setFarm( entityDtoMapper.toName( m.getFarm() ) );

        dto.setNumber( m.getNumber() );

        dto.setDescription( m.getDescription() );

        if ( m.getSize() != null ) {

            if ( dto.getSize() == null ) {

                dto.setSize( new V8MeasureDto() );
            }

            toDto( m.getSize(), dto.getSize() );
        }

        else {

            dto.setSize( null );
        }

        dto.setCommodities( entityDtoMapper.toName( m.getCommodities() ) );
    }

    @Override

    public void fillEntity(FarmPlotDto dto, RegEntityFarmPlot m) {

        if ( dto == null ) {

            return;
        }

        m.setId( dto.getId() );

        m.setFarm( entityDtoMapper.resolve( dto.getFarm(), RegEntity.class ) );

        m.setNumber( dto.getNumber() );

        m.setDescription( dto.getDescription() );

        m.setCommodities( entityDtoMapper.resolve( dto.getCommodities(), CLCommodities.class ) );

        m.setIrrigated( dto.isIrrigated() );

        if ( dto.getSize() != null ) {

            if ( m.getSize() == null ) {

                m.setSize( new V8Measure() );
            }

            fillEntity( dto.getSize(), m.getSize() );
        }

        else {

            m.setSize( null );
        }
    }

    @Override

    public void toDto(DTFarmPlotMeasurement m, PlotMeasurementDto dto) {

        if ( m == null ) {

            return;
        }

        dto.setId( m.getId() );

        dto.setPlot( entityDtoMapper.toReference( m.getPlot() ) );

        dto.setMeasureDate( m.getMeasureDate() );

        dto.setMeasureType( entityDtoMapper.toReference( m.getMeasureType() ) );

        if ( m.getMeasure() != null ) {

            if ( dto.getMeasure() == null ) {

                dto.setMeasure( new V8MeasureDto() );
            }

            toDto( m.getMeasure(), dto.getMeasure() );
        }

        else {

            dto.setMeasure( null );
        }

        dto.setComment( m.getComment() );
    }

    @Override

    public void fillEntity(PlotMeasurementDto dto, DTFarmPlotMeasurement m) {

        if ( dto == null ) {

            return;
        }

        m.setId( dto.getId() );

        m.setPlot( entityDtoMapper.resolve( dto.getPlot(), RegEntityFarmPlot.class ) );

        m.setMeasureDate( dto.getMeasureDate() );

        m.setMeasureType( entityDtoMapper.resolve( dto.getMeasureType(), CLMeasureType.class ) );

        if ( dto.getMeasure() != null ) {

            if ( m.getMeasure() == null ) {

                m.setMeasure( new V8Measure() );
            }

            fillEntity( dto.getMeasure(), m.getMeasure() );
        }

        else {

            m.setMeasure( null );
        }

        m.setComment( dto.getComment() );
    }

    @Override

    public void toDto(DTFarmPlotActivity m, PlotActivityDto dto) {

        if ( m == null ) {

            return;
        }

        dto.setActivityName( mActivityTypeName( m ) );

        dto.setId( m.getId() );

        dto.setPlot( entityDtoMapper.toReference( m.getPlot() ) );

        dto.setActivityStartDate( m.getActivityStartDate() );

        dto.setActivityEndDate( m.getActivityEndDate() );

        dto.setActivityType( entityDtoMapper.toReference( m.getActivityType() ) );

        dto.setProduct( entityDtoMapper.toReference( m.getProduct() ) );

        if ( m.getMeasure() != null ) {

            if ( dto.getMeasure() == null ) {

                dto.setMeasure( new V8MeasureDto() );
            }

            toDto( m.getMeasure(), dto.getMeasure() );
        }

        else {

            dto.setMeasure( null );
        }

        if ( m.getAdditionalMeasure() != null ) {

            if ( dto.getAdditionalMeasure() == null ) {

                dto.setAdditionalMeasure( new V8MeasureDto() );
            }

            toDto( m.getAdditionalMeasure(), dto.getAdditionalMeasure() );
        }

        else {

            dto.setAdditionalMeasure( null );
        }

        dto.setTilingActivityType( entityDtoMapper.toReference( m.getTilingActivityType() ) );

        dto.setComment( m.getComment() );
    }

    @Override

    public void fillEntity(PlotActivityDto dto, DTFarmPlotActivity m) {

        if ( dto == null ) {

            return;
        }

        m.setId( dto.getId() );

        m.setPlot( entityDtoMapper.resolve( dto.getPlot(), RegEntityFarmPlot.class ) );

        m.setActivityStartDate( dto.getActivityStartDate() );

        m.setActivityEndDate( dto.getActivityEndDate() );

        m.setActivityType( entityDtoMapper.resolve( dto.getActivityType(), CLPlotActivityType.class ) );

        m.setProduct( entityDtoMapper.resolve( dto.getProduct(), CLProduct.class ) );

        if ( dto.getMeasure() != null ) {

            if ( m.getMeasure() == null ) {

                m.setMeasure( new V8Measure() );
            }

            fillEntity( dto.getMeasure(), m.getMeasure() );
        }

        else {

            m.setMeasure( null );
        }

        if ( dto.getAdditionalMeasure() != null ) {

            if ( m.getAdditionalMeasure() == null ) {

                m.setAdditionalMeasure( new V8Measure() );
            }

            fillEntity( dto.getAdditionalMeasure(), m.getAdditionalMeasure() );
        }

        else {

            m.setAdditionalMeasure( null );
        }

        m.setTilingActivityType( entityDtoMapper.resolve( dto.getTilingActivityType(), CLTilingActivityType.class ) );

        m.setComment( dto.getComment() );
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

    public V8MeasureDto toDto(V8Measure m) {

        if ( m == null ) {

            return null;
        }

        V8MeasureDto v8MeasureDto = new V8MeasureDto();

        v8MeasureDto.setUnitName( mUnitName( m ) );

        v8MeasureDto.setQuantity( m.getQuantity() );

        v8MeasureDto.setUnit( entityDtoMapper.toReference( m.getUnit() ) );

        return v8MeasureDto;
    }

    @Override

    public void fillEntity(V8MeasureDto dto, V8Measure m) {

        if ( dto == null ) {

            return;
        }

        m.setQuantity( dto.getQuantity() );

        m.setUnit( entityDtoMapper.resolve( dto.getUnit(), CLQuantityUnit.class ) );
    }

    @Override

    public PlotListingDto toListing(RegEntityFarmPlot p) {

        if ( p == null ) {

            return null;
        }

        PlotListingDto plotListingDto = new PlotListingDto();

        plotListingDto.setId( p.getId() );

        plotListingDto.setFarm( entityDtoMapper.toName( p.getFarm() ) );

        plotListingDto.setNumber( p.getNumber() );

        plotListingDto.setDescription( p.getDescription() );

        plotListingDto.setSize( toDto( p.getSize() ) );

        plotListingDto.setCommodities( entityDtoMapper.toName( p.getCommodities() ) );

        return plotListingDto;
    }

    @Override

    public PondListingDto toListing(RegEntityFarmPond p) {

        if ( p == null ) {

            return null;
        }

        PondListingDto pondListingDto = new PondListingDto();

        pondListingDto.setId( p.getId() );

        pondListingDto.setFarm( entityDtoMapper.toName( p.getFarm() ) );

        pondListingDto.setNumber( p.getNumber() );

        pondListingDto.setDescription( p.getDescription() );

        pondListingDto.setVolume( toDto( p.getVolume() ) );

        pondListingDto.setType( entityDtoMapper.toName( p.getType() ) );

        pondListingDto.setSpecies( entityDtoMapper.toName( p.getSpecies() ) );

        return pondListingDto;
    }

    @Override

    public void toDto(DTFarmPondMeasurement act, PondMeasurementDto dto) {

        if ( act == null ) {

            return;
        }

        dto.setId( act.getId() );

        dto.setPond( entityDtoMapper.toReference( act.getPond() ) );

        dto.setMeasureDate( act.getMeasureDate() );

        dto.setMeasureType( entityDtoMapper.toReference( act.getMeasureType() ) );

        if ( act.getMeasure() != null ) {

            if ( dto.getMeasure() == null ) {

                dto.setMeasure( new V8MeasureDto() );
            }

            toDto( act.getMeasure(), dto.getMeasure() );
        }

        else {

            dto.setMeasure( null );
        }

        dto.setComment( act.getComment() );
    }

    @Override

    public void fillEntity(PondMeasurementDto dto, DTFarmPondMeasurement measure) {

        if ( dto == null ) {

            return;
        }

        measure.setId( dto.getId() );

        measure.setPond( entityDtoMapper.resolve( dto.getPond(), RegEntityFarmPond.class ) );

        measure.setMeasureDate( dto.getMeasureDate() );

        measure.setMeasureType( entityDtoMapper.resolve( dto.getMeasureType(), CLMeasureType.class ) );

        if ( dto.getMeasure() != null ) {

            if ( measure.getMeasure() == null ) {

                measure.setMeasure( new V8Measure() );
            }

            fillEntity( dto.getMeasure(), measure.getMeasure() );
        }

        else {

            measure.setMeasure( null );
        }

        measure.setComment( dto.getComment() );
    }

    private String mActivityTypeName(DTFarmPlotActivity dTFarmPlotActivity) {

        if ( dTFarmPlotActivity == null ) {

            return null;
        }

        CLPlotActivityType activityType = dTFarmPlotActivity.getActivityType();

        if ( activityType == null ) {

            return null;
        }

        String name = activityType.getName();

        if ( name == null ) {

            return null;
        }

        return name;
    }

    private String mUnitName(V8Measure v8Measure) {

        if ( v8Measure == null ) {

            return null;
        }

        CLQuantityUnit unit = v8Measure.getUnit();

        if ( unit == null ) {

            return null;
        }

        String name = unit.getName();

        if ( name == null ) {

            return null;
        }

        return name;
    }
}

