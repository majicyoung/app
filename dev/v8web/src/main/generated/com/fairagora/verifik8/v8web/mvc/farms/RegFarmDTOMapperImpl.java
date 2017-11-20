package com.fairagora.verifik8.v8web.mvc.farms;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCommodities;
import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;
import com.fairagora.verifik8.v8web.data.domain.cl.CLEntityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLHazardousWorkType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLHvHeExpensionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLMeasureType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLPlotActivityType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLPondType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLProdDataEntryType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLProduct;
import com.fairagora.verifik8.v8web.data.domain.cl.CLQuantityUnit;
import com.fairagora.verifik8.v8web.data.domain.cl.CLSoilAnalysisType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLSpecies;
import com.fairagora.verifik8.v8web.data.domain.cl.CLTilingActivityType;
import com.fairagora.verifik8.v8web.data.domain.commons.Address;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmAgProduction;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotMeasurement;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;
import com.fairagora.verifik8.v8web.data.domain.dt.DTSoilAnalysis;
import com.fairagora.verifik8.v8web.data.domain.dt.DTWaterAnalysis;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmSupplierAssignment;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;
import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyDto;
import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyListingDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTFarmAgProductionDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTSoilAnalysisDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTWaterAnalysisDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmEnvironmentalDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPlotDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPondDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffGeneralInfoSto;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.AddressDto;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;
import com.fairagora.verifik8.v8web.mvc.invididuals.dto.IndividualDto;
import com.fairagora.verifik8.v8web.mvc.invididuals.dto.IndividualListingDto;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotActivityDto;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotListingDto;
import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotMeasurementDto;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondListingDto;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondMeasurementDto;
import com.fairagora.verifik8.v8web.mvc.suppliers.dto.SupplierListingDto;
import javax.annotation.Generated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2017-11-20T11:54:15+0100",
    comments = "version: 1.1.0.Final, compiler: javac, environment: Java 1.8.0_144 (Oracle Corporation)"
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

        dto.setAerialViewUrl( farmAerialViewResourcePath( farm ) );
        dto.setName( farm.getName() );
        dto.setOwner( entityDtoMapper.toReference( farm.getOwner() ) );
        if ( farm.getLongitude() != null ) {
            dto.setLongitude( Float.parseFloat( farm.getLongitude() ) );
        }
        if ( farm.getLatitude() != null ) {
            dto.setLatitude( Float.parseFloat( farm.getLatitude() ) );
        }
        if ( farm.getSize() != null ) {
            if ( dto.getSize() == null ) {
                dto.setSize( new V8MeasureDto() );
            }
            toDto( farm.getSize(), dto.getSize() );
        }
        else {
            dto.setSize( null );
        }
        dto.setCooperative( entityDtoMapper.toReference( farm.getCooperative() ) );
    }

    @Override
    public void fillEntity(FarmFormDto dto, RegEntity farm) {
        if ( dto == null ) {
            return;
        }

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

        if ( dto.getSize() != null ) {
            if ( farm.getSize() == null ) {
                farm.setSize( new V8Measure() );
            }
            fillEntity( dto.getSize(), farm.getSize() );
        }
        else {
            farm.setSize( null );
        }
        farm.setOwner( entityDtoMapper.resolve( dto.getOwner(), RegEntity.class ) );
        if ( dto.getLongitude() != null ) {
            farm.setLongitude( String.valueOf( dto.getLongitude() ) );
        }
        if ( dto.getLatitude() != null ) {
            farm.setLatitude( String.valueOf( dto.getLatitude() ) );
        }
        farm.setCooperative( entityDtoMapper.resolve( dto.getCooperative(), RegEntity.class ) );
        if ( dto.getAerialView() != null ) {
            if ( farm.getAerialView() == null ) {
                farm.setAerialView( new Attachment() );
            }
            entityDtoMapper.map( dto.getAerialView(), farm.getAerialView() );
        }
        else {
            farm.setAerialView( null );
        }
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

        dto.setSittingProtectedAreaUrl( farmSittingProtectedAreaDocResourcePath( farm ) );
        dto.setContructionPermitUrl( farmContructionPermitResourcePath( farm ) );
        dto.setCanalRestorationPlanUrl( farmCanalRestorationPlanResourcePath( farm ) );
        dto.setLandTitleUrl( farmLandTitleResourcePath( farm ) );
        dto.setCumulativeImpactStudyUrl( farmCumulativeImpactStudyResourcePath( farm ) );
        dto.setEnvironmentImpactAssessmentDocUrl( farmEnvironmentImpactAssessmentDocResourcePath( farm ) );
        dto.setEnvironmentImpactAssessment( farm.isEnvironmentImpactAssessment() );
        dto.setFarmExpension( farm.isFarmExpension() );
        dto.setFarmExpensionType( entityDtoMapper.toReference( farm.getFarmExpensionType() ) );
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

        dto.setWorkAccidentRecordUrl( findByFarmIdWorkAccidentRecordResourcePath( findByFarmId ) );
        dto.setFarmPoliciesUrl( findByFarmIdFarmPoliciesResourcePath( findByFarmId ) );
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
        dto.setExistenceFarmPolicies( findByFarmId.isExistenceFarmPolicies() );
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

        m.setComment( dto.getComment() );
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

        m.setComment( dto.getComment() );
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

        measure.setComment( dto.getComment() );
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
    }

    @Override
    public void toDto(DTFarmAgProduction act, DTFarmAgProductionDto dto) {
        if ( act == null ) {
            return;
        }

        dto.setId( act.getId() );
        dto.setFarm( entityDtoMapper.toReference( act.getFarm() ) );
        dto.setDateFrom( act.getDateFrom() );
        dto.setDateTo( act.getDateTo() );
        dto.setCommodities( entityDtoMapper.toReference( act.getCommodities() ) );
        if ( act.getQuantity() != null ) {
            if ( dto.getQuantity() == null ) {
                dto.setQuantity( new V8MeasureDto() );
            }
            toDto( act.getQuantity(), dto.getQuantity() );
        }
        else {
            dto.setQuantity( null );
        }
        dto.setDataEntryType( entityDtoMapper.toReference( act.getDataEntryType() ) );
    }

    @Override
    public DTFarmAgProductionDto toProductionDto(DTFarmAgProduction e) {
        if ( e == null ) {
            return null;
        }

        DTFarmAgProductionDto dTFarmAgProductionDto = new DTFarmAgProductionDto();

        dTFarmAgProductionDto.setCommoditiesName( eCommoditiesName( e ) );
        dTFarmAgProductionDto.setId( e.getId() );
        dTFarmAgProductionDto.setFarm( entityDtoMapper.toReference( e.getFarm() ) );
        dTFarmAgProductionDto.setDateFrom( e.getDateFrom() );
        dTFarmAgProductionDto.setDateTo( e.getDateTo() );
        dTFarmAgProductionDto.setCommodities( entityDtoMapper.toReference( e.getCommodities() ) );
        dTFarmAgProductionDto.setQuantity( toDto( e.getQuantity() ) );
        dTFarmAgProductionDto.setDataEntryType( entityDtoMapper.toReference( e.getDataEntryType() ) );

        return dTFarmAgProductionDto;
    }

    @Override
    public DTSoilAnalysisDto toSoilAnalysisDto(DTSoilAnalysis e) {
        if ( e == null ) {
            return null;
        }

        DTSoilAnalysisDto dTSoilAnalysisDto = new DTSoilAnalysisDto();

        dTSoilAnalysisDto.setPlotNumber( ePlotNumber( e ) );
        dTSoilAnalysisDto.setSoilAnalysisTypeName( eSoilAnalysisTypeName( e ) );
        dTSoilAnalysisDto.setAnalysisUrl( eAnalysisResourcePath( e ) );
        dTSoilAnalysisDto.setPlot( entityDtoMapper.toReference( e.getPlot() ) );
        dTSoilAnalysisDto.setAnalysisDate( e.getAnalysisDate() );
        dTSoilAnalysisDto.setSoilAnalysisType( entityDtoMapper.toReference( e.getSoilAnalysisType() ) );
        dTSoilAnalysisDto.setId( e.getId() );

        return dTSoilAnalysisDto;
    }

    @Override
    public DTWaterAnalysisDto toWaterAnalysisDto(DTWaterAnalysis e) {
        if ( e == null ) {
            return null;
        }

        DTWaterAnalysisDto dTWaterAnalysisDto = new DTWaterAnalysisDto();

        dTWaterAnalysisDto.setAnalysisUrl( eAnalysisResourcePath_( e ) );
        dTWaterAnalysisDto.setPondNumber( ePondNumber( e ) );
        dTWaterAnalysisDto.setPond( entityDtoMapper.toReference( e.getPond() ) );
        dTWaterAnalysisDto.setAnalysisDate( e.getAnalysisDate() );
        dTWaterAnalysisDto.setId( e.getId() );

        return dTWaterAnalysisDto;
    }

    @Override
    public void fillEntity(DTFarmAgProductionDto dto, DTFarmAgProduction measure) {
        if ( dto == null ) {
            return;
        }

        measure.setId( dto.getId() );
        measure.setFarm( entityDtoMapper.resolve( dto.getFarm(), RegEntity.class ) );
        measure.setDateFrom( dto.getDateFrom() );
        measure.setDateTo( dto.getDateTo() );
        measure.setCommodities( entityDtoMapper.resolve( dto.getCommodities(), CLCommodities.class ) );
        if ( dto.getQuantity() != null ) {
            if ( measure.getQuantity() == null ) {
                measure.setQuantity( new V8Measure() );
            }
            fillEntity( dto.getQuantity(), measure.getQuantity() );
        }
        else {
            measure.setQuantity( null );
        }
        measure.setDataEntryType( entityDtoMapper.resolve( dto.getDataEntryType(), CLProdDataEntryType.class ) );
    }

    @Override
    public SupplierListingDto toListing(RegEntityFarmSupplierAssignment m) {
        if ( m == null ) {
            return null;
        }

        SupplierListingDto supplierListingDto = new SupplierListingDto();

        supplierListingDto.setCity( mSupplierAddressCity( m ) );
        supplierListingDto.setFarm( entityDtoMapper.toName( m.getFarm() ) );
        supplierListingDto.setSupplier( entityDtoMapper.toName( m.getSupplier() ) );
        supplierListingDto.setProductType( entityDtoMapper.toName( m.getProductType() ) );
        supplierListingDto.setId( m.getId() );

        return supplierListingDto;
    }

    @Override
    public IndividualListingDto toListing(RegEntity m) {
        if ( m == null ) {
            return null;
        }

        IndividualListingDto individualListingDto = new IndividualListingDto();

        individualListingDto.setCity( mAddressCity( m ) );
        individualListingDto.setRegistrationNumber( m.getRegistrationNumber() );
        individualListingDto.setName( m.getName() );
        individualListingDto.setPhoneNumber( m.getPhoneNumber() );
        individualListingDto.setEmail( m.getEmail() );
        individualListingDto.setNationality( entityDtoMapper.toName( m.getNationality() ) );
        individualListingDto.setId( m.getId() );

        return individualListingDto;
    }

    @Override
    public void toDto(RegEntity e, IndividualDto dto) {
        if ( e == null ) {
            return;
        }

        dto.setId( e.getId() );
        dto.setName( e.getName() );
        dto.setSurname( e.getSurname() );
        dto.setMiddleName( e.getMiddleName() );
        dto.setSuffixName( e.getSuffixName() );
        dto.setAccronym( e.getAccronym() );
        if ( e.getAddress() != null ) {
            if ( dto.getAddress() == null ) {
                dto.setAddress( new AddressDto() );
            }
            toDto( e.getAddress(), dto.getAddress() );
        }
        else {
            dto.setAddress( null );
        }
        dto.setPhoneNumber( e.getPhoneNumber() );
        dto.setMobileNumber( e.getMobileNumber() );
        dto.setFaxNumber( e.getFaxNumber() );
        dto.setEmail( e.getEmail() );
        dto.setWebsite( e.getWebsite() );
        dto.setSalutation( e.getSalutation() );
        dto.setGender( e.getGender() );
        dto.setDateOfBirth( e.getDateOfBirth() );
        dto.setNationality( entityDtoMapper.toReference( e.getNationality() ) );
        dto.setRegistrationNumber( e.getRegistrationNumber() );
    }

    @Override
    public void fillEntity(IndividualDto dto, RegEntity ind) {
        if ( dto == null ) {
            return;
        }

        ind.setName( dto.getName() );
        if ( dto.getAddress() != null ) {
            if ( ind.getAddress() == null ) {
                ind.setAddress( new Address() );
            }
            fillEntity( dto.getAddress(), ind.getAddress() );
        }
        else {
            ind.setAddress( null );
        }
        ind.setPhoneNumber( dto.getPhoneNumber() );
        ind.setMobileNumber( dto.getMobileNumber() );
        ind.setFaxNumber( dto.getFaxNumber() );
        ind.setEmail( dto.getEmail() );
        ind.setWebsite( dto.getWebsite() );
        ind.setSurname( dto.getSurname() );
        ind.setMiddleName( dto.getMiddleName() );
        ind.setSuffixName( dto.getSuffixName() );
        ind.setAccronym( dto.getAccronym() );
        ind.setNationality( entityDtoMapper.resolve( dto.getNationality(), CLCountry.class ) );
        ind.setSalutation( dto.getSalutation() );
        ind.setGender( dto.getGender() );
        ind.setDateOfBirth( dto.getDateOfBirth() );
        ind.setRegistrationNumber( dto.getRegistrationNumber() );
    }

    @Override
    public CompanyListingDto toCompListing(RegEntity m) {
        if ( m == null ) {
            return null;
        }

        CompanyListingDto companyListingDto = new CompanyListingDto();

        companyListingDto.setCity( mAddressCity_( m ) );
        companyListingDto.setRegistrationNumber( m.getRegistrationNumber() );
        companyListingDto.setName( m.getName() );
        companyListingDto.setPhoneNumber( m.getPhoneNumber() );
        companyListingDto.setEmail( m.getEmail() );
        companyListingDto.setEntityType( entityDtoMapper.toName( m.getEntityType() ) );
        companyListingDto.setId( m.getId() );

        return companyListingDto;
    }

    @Override
    public void toDto(RegEntity ind, CompanyDto dto) {
        if ( ind == null ) {
            return;
        }

        dto.setId( ind.getId() );
        dto.setName( ind.getName() );
        dto.setAccronym( ind.getAccronym() );
        if ( ind.getAddress() != null ) {
            if ( dto.getAddress() == null ) {
                dto.setAddress( new AddressDto() );
            }
            toDto( ind.getAddress(), dto.getAddress() );
        }
        else {
            dto.setAddress( null );
        }
        dto.setPhoneNumber( ind.getPhoneNumber() );
        dto.setMobileNumber( ind.getMobileNumber() );
        dto.setFaxNumber( ind.getFaxNumber() );
        dto.setEmail( ind.getEmail() );
        dto.setWebsite( ind.getWebsite() );
        dto.setRegistrationNumber( ind.getRegistrationNumber() );
        dto.setEntityType( entityDtoMapper.toReference( ind.getEntityType() ) );
        dto.setNationality( entityDtoMapper.toReference( ind.getNationality() ) );
    }

    @Override
    public void fillEntity(CompanyDto dto, RegEntity ind) {
        if ( dto == null ) {
            return;
        }

        ind.setEntityType( entityDtoMapper.resolve( dto.getEntityType(), CLEntityType.class ) );
        ind.setName( dto.getName() );
        if ( dto.getAddress() != null ) {
            if ( ind.getAddress() == null ) {
                ind.setAddress( new Address() );
            }
            fillEntity( dto.getAddress(), ind.getAddress() );
        }
        else {
            ind.setAddress( null );
        }
        ind.setPhoneNumber( dto.getPhoneNumber() );
        ind.setMobileNumber( dto.getMobileNumber() );
        ind.setFaxNumber( dto.getFaxNumber() );
        ind.setEmail( dto.getEmail() );
        ind.setWebsite( dto.getWebsite() );
        ind.setAccronym( dto.getAccronym() );
        ind.setNationality( entityDtoMapper.resolve( dto.getNationality(), CLCountry.class ) );
        ind.setRegistrationNumber( dto.getRegistrationNumber() );
    }

    @Override
    public void fillEntity(StaffGeneralInfoSto farmDto, RegEntityStaffManagement ent) {
        if ( farmDto == null ) {
            return;
        }

        ent.setNumberOfStaffAsToday( farmDto.getNumberOfStaffAsToday() );
        ent.setNbWorkersChildLivingInFarm( farmDto.getNbWorkersChildLivingInFarm() );
        ent.setNbWorkersChildHelpingInFarm( farmDto.getNbWorkersChildHelpingInFarm() );
        ent.setNbWorkersChildEnrolledSchool( farmDto.getNbWorkersChildEnrolledSchool() );
        ent.setNbRestDays( farmDto.getNbRestDays() );
        ent.setExistenceHazardousWork( farmDto.isExistenceHazardousWork() );
        ent.setHazardousWorkType( entityDtoMapper.resolve( farmDto.getHazardousWorkType(), CLHazardousWorkType.class ) );
        ent.setExistenceFarmPolicies( farmDto.isExistenceFarmPolicies() );
        if ( farmDto.getFarmPolicies() != null ) {
            if ( ent.getFarmPolicies() == null ) {
                ent.setFarmPolicies( new Attachment() );
            }
            entityDtoMapper.map( farmDto.getFarmPolicies(), ent.getFarmPolicies() );
        }
        else {
            ent.setFarmPolicies( null );
        }
        ent.setExistenceWorkAccidentRecord( farmDto.isExistenceWorkAccidentRecord() );
        if ( farmDto.getWorkAccidentRecord() != null ) {
            if ( ent.getWorkAccidentRecord() == null ) {
                ent.setWorkAccidentRecord( new Attachment() );
            }
            entityDtoMapper.map( farmDto.getWorkAccidentRecord(), ent.getWorkAccidentRecord() );
        }
        else {
            ent.setWorkAccidentRecord( null );
        }
        ent.setAccessToProtectiveEquipment( farmDto.isAccessToProtectiveEquipment() );
        ent.setWorkersRepresentativeGroup( farmDto.isWorkersRepresentativeGroup() );
    }

    @Override
    public void fillEntity(FarmEnvironmentalDto farmDto, RegEntityFarmDetails farmDetails) {
        if ( farmDto == null ) {
            return;
        }

        farmDetails.setEnvironmentImpactAssessment( farmDto.isEnvironmentImpactAssessment() );
        if ( farmDto.getEnvironmentImpactAssessmentDoc() != null ) {
            if ( farmDetails.getEnvironmentImpactAssessmentDoc() == null ) {
                farmDetails.setEnvironmentImpactAssessmentDoc( new Attachment() );
            }
            entityDtoMapper.map( farmDto.getEnvironmentImpactAssessmentDoc(), farmDetails.getEnvironmentImpactAssessmentDoc() );
        }
        else {
            farmDetails.setEnvironmentImpactAssessmentDoc( null );
        }
        if ( farmDto.getContructionPermit() != null ) {
            if ( farmDetails.getContructionPermit() == null ) {
                farmDetails.setContructionPermit( new Attachment() );
            }
            entityDtoMapper.map( farmDto.getContructionPermit(), farmDetails.getContructionPermit() );
        }
        else {
            farmDetails.setContructionPermit( null );
        }
        if ( farmDto.getLandTitle() != null ) {
            if ( farmDetails.getLandTitle() == null ) {
                farmDetails.setLandTitle( new Attachment() );
            }
            entityDtoMapper.map( farmDto.getLandTitle(), farmDetails.getLandTitle() );
        }
        else {
            farmDetails.setLandTitle( null );
        }
        farmDetails.setFarmExpension( farmDto.isFarmExpension() );
        farmDetails.setFarmExpensionType( entityDtoMapper.resolve( farmDto.getFarmExpensionType(), CLHvHeExpensionType.class ) );
        if ( farmDto.getCanalRestorationPlan() != null ) {
            if ( farmDetails.getCanalRestorationPlan() == null ) {
                farmDetails.setCanalRestorationPlan( new Attachment() );
            }
            entityDtoMapper.map( farmDto.getCanalRestorationPlan(), farmDetails.getCanalRestorationPlan() );
        }
        else {
            farmDetails.setCanalRestorationPlan( null );
        }
        if ( farmDto.getCumulativeImpactStudy() != null ) {
            if ( farmDetails.getCumulativeImpactStudy() == null ) {
                farmDetails.setCumulativeImpactStudy( new Attachment() );
            }
            entityDtoMapper.map( farmDto.getCumulativeImpactStudy(), farmDetails.getCumulativeImpactStudy() );
        }
        else {
            farmDetails.setCumulativeImpactStudy( null );
        }
        farmDetails.setSittingProtectedArea( farmDto.isSittingProtectedArea() );
        if ( farmDto.getSittingProtectedAreaDoc() != null ) {
            if ( farmDetails.getSittingProtectedAreaDoc() == null ) {
                farmDetails.setSittingProtectedAreaDoc( new Attachment() );
            }
            entityDtoMapper.map( farmDto.getSittingProtectedAreaDoc(), farmDetails.getSittingProtectedAreaDoc() );
        }
        else {
            farmDetails.setSittingProtectedAreaDoc( null );
        }
    }

    @Override
    public void fillEntity(DTWaterAnalysisDto dto, DTWaterAnalysis analysis) {
        if ( dto == null ) {
            return;
        }

        analysis.setId( dto.getId() );
        analysis.setAnalysisDate( dto.getAnalysisDate() );
        if ( dto.getAnalysis() != null ) {
            if ( analysis.getAnalysis() == null ) {
                analysis.setAnalysis( new Attachment() );
            }
            entityDtoMapper.map( dto.getAnalysis(), analysis.getAnalysis() );
        }
        else {
            analysis.setAnalysis( null );
        }
        analysis.setPond( entityDtoMapper.resolve( dto.getPond(), RegEntityFarmPond.class ) );
    }

    @Override
    public void fillEntity(DTSoilAnalysisDto dto, DTSoilAnalysis analysis) {
        if ( dto == null ) {
            return;
        }

        analysis.setId( dto.getId() );
        analysis.setPlot( entityDtoMapper.resolve( dto.getPlot(), RegEntityFarmPlot.class ) );
        analysis.setAnalysisDate( dto.getAnalysisDate() );
        analysis.setSoilAnalysisType( entityDtoMapper.resolve( dto.getSoilAnalysisType(), CLSoilAnalysisType.class ) );
        if ( dto.getAnalysis() != null ) {
            if ( analysis.getAnalysis() == null ) {
                analysis.setAnalysis( new Attachment() );
            }
            entityDtoMapper.map( dto.getAnalysis(), analysis.getAnalysis() );
        }
        else {
            analysis.setAnalysis( null );
        }
    }

    private String farmAerialViewResourcePath(RegEntityFarmDetails regEntityFarmDetails) {

        if ( regEntityFarmDetails == null ) {
            return null;
        }
        Attachment aerialView = regEntityFarmDetails.getAerialView();
        if ( aerialView == null ) {
            return null;
        }
        String resourcePath = aerialView.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String farmSittingProtectedAreaDocResourcePath(RegEntityFarmDetails regEntityFarmDetails) {

        if ( regEntityFarmDetails == null ) {
            return null;
        }
        Attachment sittingProtectedAreaDoc = regEntityFarmDetails.getSittingProtectedAreaDoc();
        if ( sittingProtectedAreaDoc == null ) {
            return null;
        }
        String resourcePath = sittingProtectedAreaDoc.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String farmContructionPermitResourcePath(RegEntityFarmDetails regEntityFarmDetails) {

        if ( regEntityFarmDetails == null ) {
            return null;
        }
        Attachment contructionPermit = regEntityFarmDetails.getContructionPermit();
        if ( contructionPermit == null ) {
            return null;
        }
        String resourcePath = contructionPermit.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String farmCanalRestorationPlanResourcePath(RegEntityFarmDetails regEntityFarmDetails) {

        if ( regEntityFarmDetails == null ) {
            return null;
        }
        Attachment canalRestorationPlan = regEntityFarmDetails.getCanalRestorationPlan();
        if ( canalRestorationPlan == null ) {
            return null;
        }
        String resourcePath = canalRestorationPlan.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String farmLandTitleResourcePath(RegEntityFarmDetails regEntityFarmDetails) {

        if ( regEntityFarmDetails == null ) {
            return null;
        }
        Attachment landTitle = regEntityFarmDetails.getLandTitle();
        if ( landTitle == null ) {
            return null;
        }
        String resourcePath = landTitle.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String farmCumulativeImpactStudyResourcePath(RegEntityFarmDetails regEntityFarmDetails) {

        if ( regEntityFarmDetails == null ) {
            return null;
        }
        Attachment cumulativeImpactStudy = regEntityFarmDetails.getCumulativeImpactStudy();
        if ( cumulativeImpactStudy == null ) {
            return null;
        }
        String resourcePath = cumulativeImpactStudy.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String farmEnvironmentImpactAssessmentDocResourcePath(RegEntityFarmDetails regEntityFarmDetails) {

        if ( regEntityFarmDetails == null ) {
            return null;
        }
        Attachment environmentImpactAssessmentDoc = regEntityFarmDetails.getEnvironmentImpactAssessmentDoc();
        if ( environmentImpactAssessmentDoc == null ) {
            return null;
        }
        String resourcePath = environmentImpactAssessmentDoc.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String findByFarmIdWorkAccidentRecordResourcePath(RegEntityStaffManagement regEntityStaffManagement) {

        if ( regEntityStaffManagement == null ) {
            return null;
        }
        Attachment workAccidentRecord = regEntityStaffManagement.getWorkAccidentRecord();
        if ( workAccidentRecord == null ) {
            return null;
        }
        String resourcePath = workAccidentRecord.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String findByFarmIdFarmPoliciesResourcePath(RegEntityStaffManagement regEntityStaffManagement) {

        if ( regEntityStaffManagement == null ) {
            return null;
        }
        Attachment farmPolicies = regEntityStaffManagement.getFarmPolicies();
        if ( farmPolicies == null ) {
            return null;
        }
        String resourcePath = farmPolicies.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
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

    private String eCommoditiesName(DTFarmAgProduction dTFarmAgProduction) {

        if ( dTFarmAgProduction == null ) {
            return null;
        }
        CLCommodities commodities = dTFarmAgProduction.getCommodities();
        if ( commodities == null ) {
            return null;
        }
        String name = commodities.getName();
        if ( name == null ) {
            return null;
        }
        return name;
    }

    private String ePlotNumber(DTSoilAnalysis dTSoilAnalysis) {

        if ( dTSoilAnalysis == null ) {
            return null;
        }
        RegEntityFarmPlot plot = dTSoilAnalysis.getPlot();
        if ( plot == null ) {
            return null;
        }
        String number = plot.getNumber();
        if ( number == null ) {
            return null;
        }
        return number;
    }

    private String eSoilAnalysisTypeName(DTSoilAnalysis dTSoilAnalysis) {

        if ( dTSoilAnalysis == null ) {
            return null;
        }
        CLSoilAnalysisType soilAnalysisType = dTSoilAnalysis.getSoilAnalysisType();
        if ( soilAnalysisType == null ) {
            return null;
        }
        String name = soilAnalysisType.getName();
        if ( name == null ) {
            return null;
        }
        return name;
    }

    private String eAnalysisResourcePath(DTSoilAnalysis dTSoilAnalysis) {

        if ( dTSoilAnalysis == null ) {
            return null;
        }
        Attachment analysis = dTSoilAnalysis.getAnalysis();
        if ( analysis == null ) {
            return null;
        }
        String resourcePath = analysis.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String eAnalysisResourcePath_(DTWaterAnalysis dTWaterAnalysis) {

        if ( dTWaterAnalysis == null ) {
            return null;
        }
        Attachment analysis = dTWaterAnalysis.getAnalysis();
        if ( analysis == null ) {
            return null;
        }
        String resourcePath = analysis.getResourcePath();
        if ( resourcePath == null ) {
            return null;
        }
        return resourcePath;
    }

    private String ePondNumber(DTWaterAnalysis dTWaterAnalysis) {

        if ( dTWaterAnalysis == null ) {
            return null;
        }
        RegEntityFarmPond pond = dTWaterAnalysis.getPond();
        if ( pond == null ) {
            return null;
        }
        String number = pond.getNumber();
        if ( number == null ) {
            return null;
        }
        return number;
    }

    private String mSupplierAddressCity(RegEntityFarmSupplierAssignment regEntityFarmSupplierAssignment) {

        if ( regEntityFarmSupplierAssignment == null ) {
            return null;
        }
        RegEntity supplier = regEntityFarmSupplierAssignment.getSupplier();
        if ( supplier == null ) {
            return null;
        }
        Address address = supplier.getAddress();
        if ( address == null ) {
            return null;
        }
        String city = address.getCity();
        if ( city == null ) {
            return null;
        }
        return city;
    }

    private String mAddressCity(RegEntity regEntity) {

        if ( regEntity == null ) {
            return null;
        }
        Address address = regEntity.getAddress();
        if ( address == null ) {
            return null;
        }
        String city = address.getCity();
        if ( city == null ) {
            return null;
        }
        return city;
    }

    private String mAddressCity_(RegEntity regEntity) {

        if ( regEntity == null ) {
            return null;
        }
        Address address = regEntity.getAddress();
        if ( address == null ) {
            return null;
        }
        String city = address.getCity();
        if ( city == null ) {
            return null;
        }
        return city;
    }
}
