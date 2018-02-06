package com.fairagora.verifik8.v8web.mvc.farms;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppCompanyPositionType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppContractType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppGetBackFinancialDepositReason;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHazardousWorkType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHiringRestrictionType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppHvHeExpensionType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppLegalStatus;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppMeasureType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppNoEarlyTerminationContractReason;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentDebtType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentFrequency;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppProdDataEntryType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppSalaryDeductionType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppSoilAnalysisType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppTilingActivityType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppWorkerEntityDocumentTypes;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPlotActivityType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondActivityType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLFarmPondType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCommodities;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCountry;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCurrency;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefLanguage;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProductType;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefSpecies;

import com.fairagora.verifik8.v8web.data.domain.cl.ClAppTerminationContractReason;

import com.fairagora.verifik8.v8web.data.domain.commons.Address;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;

import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmAgProduction;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmAqProduction;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotMeasurement;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;

import com.fairagora.verifik8.v8web.data.domain.dt.DTSoilAnalysis;

import com.fairagora.verifik8.v8web.data.domain.dt.DTWaterAnalysis;

import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmSupplierAssignment;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffSafety;

import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaff;

import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaffContract;

import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyDto;

import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyListingDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.DTFarmAgProductionDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.DTFarmAqProductionDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.DTSoilAnalysisDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.DTWaterAnalysisDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmEnvironmentalDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmHiringRecruitmentDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPlotDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPondDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmStaffSafetyDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffContractDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffFarmFormDto;

import com.fairagora.verifik8.v8web.mvc.farms.dto.StaffGeneralInfoSto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.EntityDtoMapper;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.AddressDto;

import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.commons.V8MeasureDto;

import com.fairagora.verifik8.v8web.mvc.invididuals.dto.IndividualDto;

import com.fairagora.verifik8.v8web.mvc.invididuals.dto.IndividualListingDto;

import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotActivityDto;

import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotListingDto;

import com.fairagora.verifik8.v8web.mvc.plots.dto.PlotMeasurementDto;

import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondActivityDto;

import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondListingDto;

import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondMeasurementDto;

import com.fairagora.verifik8.v8web.mvc.suppliers.dto.SupplierListingDto;

import javax.annotation.Generated;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

@Generated(

    value = "org.mapstruct.ap.MappingProcessor",

    date = "2018-02-06T22:35:10+0100",

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

        dto.setInstantMessanger( farm.getInstantMessanger() );

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

        dto.setQuotaId( farm.getQuotaId() );
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

        farm.setInstantMessanger( dto.getInstantMessanger() );

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

        farm.setQuotaId( dto.getQuotaId() );
    }

    @Override

    public void fillEntity(AddressDto dto, Address adr) {

        if ( dto == null ) {

            return;
        }

        adr.setMain( dto.getMain() );

        adr.setCity( dto.getCity() );

        adr.setZip( dto.getZip() );

        adr.setCountry( entityDtoMapper.resolve( dto.getCountry(), CLRefCountry.class ) );
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

        dto.setProtectiveEquipmentUrl( findByFarmIdProtectiveEquipmentResourcePath( findByFarmId ) );

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

        if ( findByFarmId.getNbOfSchoolInArea() != null ) {

            dto.setNbOfSchoolInArea( findByFarmId.getNbOfSchoolInArea() );
        }

        if ( findByFarmId.getNbRepresentativeGroupsInArea() != null ) {

            dto.setNbRepresentativeGroupsInArea( findByFarmId.getNbRepresentativeGroupsInArea() );
        }

        dto.setRecordGrievingSystem( findByFarmId.isRecordGrievingSystem() );

        dto.setJoinWorkersRepresentativeGroup( findByFarmId.isJoinWorkersRepresentativeGroup() );

        if ( findByFarmId.getNbMigrantWorkers() != null ) {

            dto.setNbMigrantWorkers( findByFarmId.getNbMigrantWorkers() );
        }

        dto.setExistenceGrievingSystem( findByFarmId.isExistenceGrievingSystem() );

        dto.setWorkerHurt( findByFarmId.isWorkerHurt() );

        dto.setWorkerHurtExplaination( findByFarmId.getWorkerHurtExplaination() );
    }

    @Override

    public void toDto(RegEntityStaffManagement farmStafMgmt, FarmHiringRecruitmentDto dto) {

        if ( farmStafMgmt == null ) {

            return;
        }

        dto.setFarmId( farmStafMgmt.getFarmId() );

        dto.setWorkersMakeFinancialDeposit( farmStafMgmt.getWorkersMakeFinancialDeposit() );

        dto.setGetBackFinancialDepositReason( entityDtoMapper.toReference( farmStafMgmt.getGetBackFinancialDepositReason() ) );

        dto.setNoEarlyTerminationContractReason( entityDtoMapper.toReference( farmStafMgmt.getNoEarlyTerminationContractReason() ) );

        dto.setContractTerminationReason( entityDtoMapper.toReference( farmStafMgmt.getContractTerminationReason() ) );

        dto.setContractTerminationOtherReason( farmStafMgmt.getContractTerminationOtherReason() );

        dto.setKeepWorkerDocumentSafeKeeping( farmStafMgmt.getKeepWorkerDocumentSafeKeeping() );

        dto.setKeptWorkerEntityDocumentType1( entityDtoMapper.toReference( farmStafMgmt.getKeptWorkerEntityDocumentType1() ) );

        dto.setKeptWorkerEntityDocumentType2( entityDtoMapper.toReference( farmStafMgmt.getKeptWorkerEntityDocumentType2() ) );

        dto.setKeptWorkerEntityDocumentType3( entityDtoMapper.toReference( farmStafMgmt.getKeptWorkerEntityDocumentType3() ) );

        dto.setKeptWorkerEntityDocumentType4( entityDtoMapper.toReference( farmStafMgmt.getKeptWorkerEntityDocumentType4() ) );

        dto.setAnyContractSignedWithWorkers( farmStafMgmt.getAnyContractSignedWithWorkers() );

        dto.setStaffHiredDirectly( farmStafMgmt.getStaffHiredDirectly() );

        dto.setStaffHiredThroughAgent( farmStafMgmt.getStaffHiredThroughAgent() );

        dto.setSalaryDeductionType1( entityDtoMapper.toReference( farmStafMgmt.getSalaryDeductionType1() ) );

        dto.setSalaryDeductionType2( entityDtoMapper.toReference( farmStafMgmt.getSalaryDeductionType2() ) );

        dto.setSalaryDeductionType3( entityDtoMapper.toReference( farmStafMgmt.getSalaryDeductionType3() ) );

        dto.setSalaryDeductionType4( entityDtoMapper.toReference( farmStafMgmt.getSalaryDeductionType4() ) );

        dto.setSalaryDeductionOther( farmStafMgmt.getSalaryDeductionOther() );

        dto.setAmountSalaryDeducedMonth( farmStafMgmt.getAmountSalaryDeducedMonth() );

        dto.setPaymentSlipProvidedToWorker( farmStafMgmt.getPaymentSlipProvidedToWorker() );

        dto.setWorkerInDebt( farmStafMgmt.getWorkerInDebt() );

        dto.setPaymentDebtType1( entityDtoMapper.toReference( farmStafMgmt.getPaymentDebtType1() ) );

        dto.setPaymentDebtType2( entityDtoMapper.toReference( farmStafMgmt.getPaymentDebtType2() ) );

        dto.setPaymentDebtType3( entityDtoMapper.toReference( farmStafMgmt.getPaymentDebtType3() ) );

        dto.setPaymentDebtType4( entityDtoMapper.toReference( farmStafMgmt.getPaymentDebtType4() ) );

        dto.setWorkersInDebtOtherStakeHolder( farmStafMgmt.getWorkersInDebtOtherStakeHolder() );

        dto.setInKindPayment( farmStafMgmt.getInKindPayment() );

        dto.setInKindPaymentType( farmStafMgmt.getInKindPaymentType() );

        dto.setHiringRestriction( entityDtoMapper.toReference( farmStafMgmt.getHiringRestriction() ) );
    }

    @Override

    public void fillEntity(FarmHiringRecruitmentDto farmDto, RegEntityStaffManagement ent) {

        if ( farmDto == null ) {

            return;
        }

        ent.setWorkersMakeFinancialDeposit( farmDto.getWorkersMakeFinancialDeposit() );

        ent.setGetBackFinancialDepositReason( entityDtoMapper.resolve( farmDto.getGetBackFinancialDepositReason(), CLAppGetBackFinancialDepositReason.class ) );

        ent.setNoEarlyTerminationContractReason( entityDtoMapper.resolve( farmDto.getNoEarlyTerminationContractReason(), CLAppNoEarlyTerminationContractReason.class ) );

        ent.setContractTerminationReason( entityDtoMapper.resolve( farmDto.getContractTerminationReason(), ClAppTerminationContractReason.class ) );

        ent.setContractTerminationOtherReason( farmDto.getContractTerminationOtherReason() );

        ent.setKeepWorkerDocumentSafeKeeping( farmDto.getKeepWorkerDocumentSafeKeeping() );

        ent.setKeptWorkerEntityDocumentType1( entityDtoMapper.resolve( farmDto.getKeptWorkerEntityDocumentType1(), CLAppWorkerEntityDocumentTypes.class ) );

        ent.setKeptWorkerEntityDocumentType2( entityDtoMapper.resolve( farmDto.getKeptWorkerEntityDocumentType2(), CLAppWorkerEntityDocumentTypes.class ) );

        ent.setKeptWorkerEntityDocumentType3( entityDtoMapper.resolve( farmDto.getKeptWorkerEntityDocumentType3(), CLAppWorkerEntityDocumentTypes.class ) );

        ent.setKeptWorkerEntityDocumentType4( entityDtoMapper.resolve( farmDto.getKeptWorkerEntityDocumentType4(), CLAppWorkerEntityDocumentTypes.class ) );

        ent.setAnyContractSignedWithWorkers( farmDto.getAnyContractSignedWithWorkers() );

        ent.setStaffHiredDirectly( farmDto.getStaffHiredDirectly() );

        ent.setStaffHiredThroughAgent( farmDto.getStaffHiredThroughAgent() );

        ent.setSalaryDeductionType1( entityDtoMapper.resolve( farmDto.getSalaryDeductionType1(), CLAppSalaryDeductionType.class ) );

        ent.setSalaryDeductionType2( entityDtoMapper.resolve( farmDto.getSalaryDeductionType2(), CLAppSalaryDeductionType.class ) );

        ent.setSalaryDeductionType3( entityDtoMapper.resolve( farmDto.getSalaryDeductionType3(), CLAppSalaryDeductionType.class ) );

        ent.setSalaryDeductionType4( entityDtoMapper.resolve( farmDto.getSalaryDeductionType4(), CLAppSalaryDeductionType.class ) );

        ent.setSalaryDeductionOther( farmDto.getSalaryDeductionOther() );

        ent.setAmountSalaryDeducedMonth( farmDto.getAmountSalaryDeducedMonth() );

        ent.setPaymentSlipProvidedToWorker( farmDto.getPaymentSlipProvidedToWorker() );

        ent.setWorkerInDebt( farmDto.getWorkerInDebt() );

        ent.setPaymentDebtType1( entityDtoMapper.resolve( farmDto.getPaymentDebtType1(), CLAppPaymentDebtType.class ) );

        ent.setPaymentDebtType2( entityDtoMapper.resolve( farmDto.getPaymentDebtType2(), CLAppPaymentDebtType.class ) );

        ent.setPaymentDebtType3( entityDtoMapper.resolve( farmDto.getPaymentDebtType3(), CLAppPaymentDebtType.class ) );

        ent.setPaymentDebtType4( entityDtoMapper.resolve( farmDto.getPaymentDebtType4(), CLAppPaymentDebtType.class ) );

        ent.setWorkersInDebtOtherStakeHolder( farmDto.getWorkersInDebtOtherStakeHolder() );

        ent.setInKindPayment( farmDto.getInKindPayment() );

        ent.setInKindPaymentType( farmDto.getInKindPaymentType() );

        ent.setHiringRestriction( entityDtoMapper.resolve( farmDto.getHiringRestriction(), CLAppHiringRestrictionType.class ) );
    }

    @Override

    public void toDto(RegEntityFarmPond m, FarmPondDto dto) {

        if ( m == null ) {

            return;
        }

        dto.setSpeciesName( mSpeciesLocalisedName( m ) );

        dto.setId( m.getId() );

        dto.setFarm( entityDtoMapper.toReference( m.getFarm() ) );

        dto.setNumber( m.getNumber() );

        dto.setDescription( m.getDescription() );

        dto.setType( entityDtoMapper.toReference( m.getType() ) );

        dto.setSpecies( entityDtoMapper.toReference( m.getSpecies() ) );

        if ( m.getSize() != null ) {

            if ( dto.getSize() == null ) {

                dto.setSize( new V8MeasureDto() );
            }

            toDto( m.getSize(), dto.getSize() );
        }

        else {

            dto.setSize( null );
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

        m.setType( entityDtoMapper.resolve( dto.getType(), CLFarmPondType.class ) );

        m.setSpecies( entityDtoMapper.resolve( dto.getSpecies(), CLRefSpecies.class ) );

        if ( dto.getSize() != null ) {

            if ( m.getSize() == null ) {

                m.setSize( new V8Measure() );
            }

            fillEntity( dto.getSize(), m.getSize() );
        }

        else {

            m.setSize( null );
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

        m.setCommodities( entityDtoMapper.resolve( dto.getCommodities(), CLRefCommodities.class ) );

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

        m.setMeasureType( entityDtoMapper.resolve( dto.getMeasureType(), CLAppMeasureType.class ) );

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

        dto.setActivityName( mActivityTypeLocalisedName( m ) );

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

        m.setActivityType( entityDtoMapper.resolve( dto.getActivityType(), CLFarmPlotActivityType.class ) );

        m.setProduct( entityDtoMapper.resolve( dto.getProduct(), CLRefProduct.class ) );

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

        m.setTilingActivityType( entityDtoMapper.resolve( dto.getTilingActivityType(), CLAppTilingActivityType.class ) );
    }

    @Override

    public void toDto(DTFarmPondActivity m, PondActivityDto dto) {

        if ( m == null ) {

            return;
        }

        dto.setActivityName( mActivityTypeLocalisedName_( m ) );

        dto.setId( m.getId() );

        dto.setPond( entityDtoMapper.toReference( m.getPond() ) );

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

        dto.setComment( m.getComment() );
    }

    @Override

    public void fillEntity(PondActivityDto dto, DTFarmPondActivity m) {

        if ( dto == null ) {

            return;
        }

        m.setComment( dto.getComment() );

        m.setId( dto.getId() );

        m.setPond( entityDtoMapper.resolve( dto.getPond(), RegEntityFarmPond.class ) );

        m.setActivityStartDate( dto.getActivityStartDate() );

        m.setActivityEndDate( dto.getActivityEndDate() );

        m.setActivityType( entityDtoMapper.resolve( dto.getActivityType(), CLFarmPondActivityType.class ) );

        m.setProduct( entityDtoMapper.resolve( dto.getProduct(), CLRefProduct.class ) );

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

        v8MeasureDto.setUnitName( mUnitLocalisedName( m ) );

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

        m.setUnit( entityDtoMapper.resolve( dto.getUnit(), CLAppQuantityUnit.class ) );
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

        pondListingDto.setSize( toDto( p.getSize() ) );

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

        measure.setMeasureType( entityDtoMapper.resolve( dto.getMeasureType(), CLAppMeasureType.class ) );

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

        dTFarmAgProductionDto.setCommoditiesName( eCommoditiesLocalisedName( e ) );

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

    public void fillEntity(DTFarmAgProductionDto dto, DTFarmAgProduction measure) {

        if ( dto == null ) {

            return;
        }

        measure.setId( dto.getId() );

        measure.setFarm( entityDtoMapper.resolve( dto.getFarm(), RegEntity.class ) );

        measure.setDateFrom( dto.getDateFrom() );

        measure.setDateTo( dto.getDateTo() );

        measure.setCommodities( entityDtoMapper.resolve( dto.getCommodities(), CLRefCommodities.class ) );

        if ( dto.getQuantity() != null ) {

            if ( measure.getQuantity() == null ) {

                measure.setQuantity( new V8Measure() );
            }

            fillEntity( dto.getQuantity(), measure.getQuantity() );
        }

        else {

            measure.setQuantity( null );
        }

        measure.setDataEntryType( entityDtoMapper.resolve( dto.getDataEntryType(), CLAppProdDataEntryType.class ) );
    }

    @Override

    public DTFarmAqProductionDto toProductionDto(DTFarmAqProduction e) {

        if ( e == null ) {

            return null;
        }

        DTFarmAqProductionDto dTFarmAqProductionDto = new DTFarmAqProductionDto();

        dTFarmAqProductionDto.setSpeciesName( eSpeciesLocalisedName( e ) );

        dTFarmAqProductionDto.setId( e.getId() );

        dTFarmAqProductionDto.setFarm( entityDtoMapper.toReference( e.getFarm() ) );

        dTFarmAqProductionDto.setDateFrom( e.getDateFrom() );

        dTFarmAqProductionDto.setDateTo( e.getDateTo() );

        dTFarmAqProductionDto.setSpecies( entityDtoMapper.toReference( e.getSpecies() ) );

        dTFarmAqProductionDto.setQuantity( toDto( e.getQuantity() ) );

        dTFarmAqProductionDto.setDataEntryType( entityDtoMapper.toReference( e.getDataEntryType() ) );

        return dTFarmAqProductionDto;
    }

    @Override

    public void fillEntity(DTFarmAqProductionDto dto, DTFarmAqProduction measure) {

        if ( dto == null ) {

            return;
        }

        measure.setId( dto.getId() );

        measure.setFarm( entityDtoMapper.resolve( dto.getFarm(), RegEntity.class ) );

        measure.setDateFrom( dto.getDateFrom() );

        measure.setDateTo( dto.getDateTo() );

        measure.setSpecies( entityDtoMapper.resolve( dto.getSpecies(), CLRefSpecies.class ) );

        if ( dto.getQuantity() != null ) {

            if ( measure.getQuantity() == null ) {

                measure.setQuantity( new V8Measure() );
            }

            fillEntity( dto.getQuantity(), measure.getQuantity() );
        }

        else {

            measure.setQuantity( null );
        }

        measure.setDataEntryType( entityDtoMapper.resolve( dto.getDataEntryType(), CLAppProdDataEntryType.class ) );
    }

    @Override

    public DTSoilAnalysisDto toSoilAnalysisDto(DTSoilAnalysis e) {

        if ( e == null ) {

            return null;
        }

        DTSoilAnalysisDto dTSoilAnalysisDto = new DTSoilAnalysisDto();

        dTSoilAnalysisDto.setPlotNumber( ePlotNumber( e ) );

        dTSoilAnalysisDto.setSoilAnalysisTypeName( eSoilAnalysisTypeLocalisedName( e ) );

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

    public SupplierListingDto toListing(RegEntityFarmSupplierAssignment m) {

        if ( m == null ) {

            return null;
        }

        SupplierListingDto supplierListingDto = new SupplierListingDto();

        supplierListingDto.setCity( mSupplierAddressCity( m ) );

        supplierListingDto.setProductType( mProductTypeLocalisedName( m ) );

        supplierListingDto.setFarm( entityDtoMapper.toName( m.getFarm() ) );

        supplierListingDto.setSupplier( entityDtoMapper.toName( m.getSupplier() ) );

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

        ind.setNationality( entityDtoMapper.resolve( dto.getNationality(), CLRefCountry.class ) );

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

        companyListingDto.setEntityType( mEntityTypeLocalisedName( m ) );

        companyListingDto.setRegistrationNumber( m.getRegistrationNumber() );

        companyListingDto.setName( m.getName() );

        companyListingDto.setPhoneNumber( m.getPhoneNumber() );

        companyListingDto.setEmail( m.getEmail() );

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

        ind.setEntityType( entityDtoMapper.resolve( dto.getEntityType(), CLAppEntityType.class ) );

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

        ind.setNationality( entityDtoMapper.resolve( dto.getNationality(), CLRefCountry.class ) );

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

        ent.setHazardousWorkType( entityDtoMapper.resolve( farmDto.getHazardousWorkType(), CLAppHazardousWorkType.class ) );

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

        ent.setExistenceGrievingSystem( farmDto.isExistenceGrievingSystem() );

        if ( farmDto.getProtectiveEquipment() != null ) {

            if ( ent.getProtectiveEquipment() == null ) {

                ent.setProtectiveEquipment( new Attachment() );
            }

            entityDtoMapper.map( farmDto.getProtectiveEquipment(), ent.getProtectiveEquipment() );
        }

        else {

            ent.setProtectiveEquipment( null );
        }

        ent.setWorkersRepresentativeGroup( farmDto.isWorkersRepresentativeGroup() );

        ent.setNbRepresentativeGroupsInArea( farmDto.getNbRepresentativeGroupsInArea() );

        ent.setNbOfSchoolInArea( farmDto.getNbOfSchoolInArea() );

        ent.setJoinWorkersRepresentativeGroup( farmDto.isJoinWorkersRepresentativeGroup() );

        ent.setRecordGrievingSystem( farmDto.isRecordGrievingSystem() );

        ent.setNbMigrantWorkers( farmDto.getNbMigrantWorkers() );

        ent.setWorkerHurt( farmDto.isWorkerHurt() );

        ent.setWorkerHurtExplaination( farmDto.getWorkerHurtExplaination() );
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

        farmDetails.setFarmExpensionType( entityDtoMapper.resolve( farmDto.getFarmExpensionType(), CLAppHvHeExpensionType.class ) );

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

        analysis.setSoilAnalysisType( entityDtoMapper.resolve( dto.getSoilAnalysisType(), CLAppSoilAnalysisType.class ) );

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

    @Override

    public StaffFarmFormDto toDto(RegEntityStaff e) {

        if ( e == null ) {

            return null;
        }

        StaffFarmFormDto staffFarmFormDto = new StaffFarmFormDto();

        staffFarmFormDto.setWorkingPermitUrl( eWorkingPermitResourcePath( e ) );

        staffFarmFormDto.setEntity( entityDtoMapper.toReference( e.getEntity() ) );

        staffFarmFormDto.setPosition( entityDtoMapper.toReference( e.getPosition() ) );

        staffFarmFormDto.setOfficePhoneNumber( e.getOfficePhoneNumber() );

        staffFarmFormDto.setOfficeMobile( e.getOfficeMobile() );

        staffFarmFormDto.setOfficeEmail( e.getOfficeEmail() );

        staffFarmFormDto.setFromLocalComunity( e.isFromLocalComunity() );

        staffFarmFormDto.setCompanyFocalPoint( e.isCompanyFocalPoint() );

        staffFarmFormDto.setLegalStatus( entityDtoMapper.toReference( e.getLegalStatus() ) );

        staffFarmFormDto.setNoEmployedAnymore( e.isNoEmployedAnymore() );

        staffFarmFormDto.setLanguage( entityDtoMapper.toReference( e.getLanguage() ) );

        return staffFarmFormDto;
    }

    @Override

    public void fillEntity(StaffFarmFormDto dto, RegEntityStaff e) {

        if ( dto == null ) {

            return;
        }

        e.setLanguage( entityDtoMapper.resolve( dto.getLanguage(), CLRefLanguage.class ) );

        e.setLegalStatus( entityDtoMapper.resolve( dto.getLegalStatus(), CLAppLegalStatus.class ) );

        e.setNoEmployedAnymore( dto.isNoEmployedAnymore() );

        if ( dto.getWorkingPermit() != null ) {

            if ( e.getWorkingPermit() == null ) {

                e.setWorkingPermit( new Attachment() );
            }

            entityDtoMapper.map( dto.getWorkingPermit(), e.getWorkingPermit() );
        }

        else {

            e.setWorkingPermit( null );
        }

        e.setEntity( entityDtoMapper.resolve( dto.getEntity(), RegEntity.class ) );

        e.setFromLocalComunity( dto.isFromLocalComunity() );

        e.setCompanyFocalPoint( dto.isCompanyFocalPoint() );

        e.setOfficePhoneNumber( dto.getOfficePhoneNumber() );

        e.setOfficeMobile( dto.getOfficeMobile() );

        e.setOfficeEmail( dto.getOfficeEmail() );

        e.setPosition( entityDtoMapper.resolve( dto.getPosition(), CLAppCompanyPositionType.class ) );
    }

    @Override

    public StaffContractDto toDto(RegEntityStaffContract e) {

        if ( e == null ) {

            return null;
        }

        StaffContractDto staffContractDto = new StaffContractDto();

        staffContractDto.setFarm( entityDtoMapper.toReference( e.getFarm() ) );

        staffContractDto.setEntity( entityDtoMapper.toReference( e.getEntity() ) );

        staffContractDto.setContractNo( e.getContractNo() );

        staffContractDto.setContactType( entityDtoMapper.toReference( e.getContactType() ) );

        staffContractDto.setCompanyPositionType( entityDtoMapper.toReference( e.getCompanyPositionType() ) );

        staffContractDto.setDepartement( e.getDepartement() );

        staffContractDto.setStartingDate( e.getStartingDate() );

        staffContractDto.setAgreedEndDate( e.getAgreedEndDate() );

        staffContractDto.setIssuanceDate( e.getIssuanceDate() );

        staffContractDto.setActualTerminationDate( e.getActualTerminationDate() );

        staffContractDto.setContinuingContract( e.isContinuingContract() );

        staffContractDto.setDuration( e.getDuration() );

        staffContractDto.setRemuneration( e.getRemuneration() );

        staffContractDto.setPaymentFrequency( entityDtoMapper.toReference( e.getPaymentFrequency() ) );

        staffContractDto.setMinimumWagesApplied( e.isMinimumWagesApplied() );

        staffContractDto.setNbHoursPerDay( e.getNbHoursPerDay() );

        staffContractDto.setNbDaysAnnualLeave( e.getNbDaysAnnualLeave() );

        staffContractDto.setNoAnnualLeaveSpecified( e.isNoAnnualLeaveSpecified() );

        staffContractDto.setContractInAnotherLanguage( e.isContractInAnotherLanguage() );

        staffContractDto.setCountry( entityDtoMapper.toReference( e.getCountry() ) );

        staffContractDto.setId( e.getId() );

        staffContractDto.setRemunerationCurrency( entityDtoMapper.toReference( e.getRemunerationCurrency() ) );

        return staffContractDto;
    }

    @Override

    public void fillEntity(StaffContractDto dto, RegEntityStaffContract e) {

        if ( dto == null ) {

            return;
        }

        e.setContractNo( dto.getContractNo() );

        e.setContactType( entityDtoMapper.resolve( dto.getContactType(), CLAppContractType.class ) );

        e.setCompanyPositionType( entityDtoMapper.resolve( dto.getCompanyPositionType(), CLAppCompanyPositionType.class ) );

        e.setDepartement( dto.getDepartement() );

        e.setStartingDate( dto.getStartingDate() );

        e.setAgreedEndDate( dto.getAgreedEndDate() );

        e.setIssuanceDate( dto.getIssuanceDate() );

        e.setActualTerminationDate( dto.getActualTerminationDate() );

        e.setContinuingContract( dto.isContinuingContract() );

        e.setDuration( dto.getDuration() );

        e.setRemuneration( dto.getRemuneration() );

        e.setPaymentFrequency( entityDtoMapper.resolve( dto.getPaymentFrequency(), CLAppPaymentFrequency.class ) );

        e.setMinimumWagesApplied( dto.isMinimumWagesApplied() );

        e.setNbHoursPerDay( dto.getNbHoursPerDay() );

        e.setNbDaysAnnualLeave( dto.getNbDaysAnnualLeave() );

        e.setNoAnnualLeaveSpecified( dto.isNoAnnualLeaveSpecified() );

        e.setContractInAnotherLanguage( dto.isContractInAnotherLanguage() );

        e.setCountry( entityDtoMapper.resolve( dto.getCountry(), CLRefCountry.class ) );

        e.setId( dto.getId() );

        e.setRemunerationCurrency( entityDtoMapper.resolve( dto.getRemunerationCurrency(), CLRefCurrency.class ) );
    }

    @Override

    public void toDto(RegEntityStaffSafety entity, FarmStaffSafetyDto dto) {

        if ( entity == null ) {

            return;
        }

        dto.setFarmId( entity.getFarmId() );

        dto.setSafeyEquipmentInFarm( entity.getSafeyEquipmentInFarm() );

        dto.setFreeSafetyEquipment( entity.getFreeSafetyEquipment() );

        dto.setNumberTrainedStaff( entity.getNumberTrainedStaff() );

        dto.setPreventionAccidentMeasures( entity.getPreventionAccidentMeasures() );
    }

    @Override

    public void fillEntity(FarmStaffSafetyDto farmDto, RegEntityStaffSafety ent) {

        if ( farmDto == null ) {

            return;
        }

        ent.setSafeyEquipmentInFarm( farmDto.getSafeyEquipmentInFarm() );

        ent.setFreeSafetyEquipment( farmDto.getFreeSafetyEquipment() );

        ent.setNumberTrainedStaff( farmDto.getNumberTrainedStaff() );

        ent.setPreventionAccidentMeasures( farmDto.getPreventionAccidentMeasures() );
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

    private String findByFarmIdProtectiveEquipmentResourcePath(RegEntityStaffManagement regEntityStaffManagement) {

        if ( regEntityStaffManagement == null ) {

            return null;
        }

        Attachment protectiveEquipment = regEntityStaffManagement.getProtectiveEquipment();

        if ( protectiveEquipment == null ) {

            return null;
        }

        String resourcePath = protectiveEquipment.getResourcePath();

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

    private String mSpeciesLocalisedName(RegEntityFarmPond regEntityFarmPond) {

        if ( regEntityFarmPond == null ) {

            return null;
        }

        CLRefSpecies species = regEntityFarmPond.getSpecies();

        if ( species == null ) {

            return null;
        }

        String localisedName = species.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
    }

    private String mActivityTypeLocalisedName(DTFarmPlotActivity dTFarmPlotActivity) {

        if ( dTFarmPlotActivity == null ) {

            return null;
        }

        CLFarmPlotActivityType activityType = dTFarmPlotActivity.getActivityType();

        if ( activityType == null ) {

            return null;
        }

        String localisedName = activityType.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
    }

    private String mActivityTypeLocalisedName_(DTFarmPondActivity dTFarmPondActivity) {

        if ( dTFarmPondActivity == null ) {

            return null;
        }

        CLFarmPondActivityType activityType = dTFarmPondActivity.getActivityType();

        if ( activityType == null ) {

            return null;
        }

        String localisedName = activityType.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
    }

    private String mUnitLocalisedName(V8Measure v8Measure) {

        if ( v8Measure == null ) {

            return null;
        }

        CLAppQuantityUnit unit = v8Measure.getUnit();

        if ( unit == null ) {

            return null;
        }

        String localisedName = unit.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
    }

    private String eCommoditiesLocalisedName(DTFarmAgProduction dTFarmAgProduction) {

        if ( dTFarmAgProduction == null ) {

            return null;
        }

        CLRefCommodities commodities = dTFarmAgProduction.getCommodities();

        if ( commodities == null ) {

            return null;
        }

        String localisedName = commodities.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
    }

    private String eSpeciesLocalisedName(DTFarmAqProduction dTFarmAqProduction) {

        if ( dTFarmAqProduction == null ) {

            return null;
        }

        CLRefSpecies species = dTFarmAqProduction.getSpecies();

        if ( species == null ) {

            return null;
        }

        String localisedName = species.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
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

    private String eSoilAnalysisTypeLocalisedName(DTSoilAnalysis dTSoilAnalysis) {

        if ( dTSoilAnalysis == null ) {

            return null;
        }

        CLAppSoilAnalysisType soilAnalysisType = dTSoilAnalysis.getSoilAnalysisType();

        if ( soilAnalysisType == null ) {

            return null;
        }

        String localisedName = soilAnalysisType.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
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

    private String mProductTypeLocalisedName(RegEntityFarmSupplierAssignment regEntityFarmSupplierAssignment) {

        if ( regEntityFarmSupplierAssignment == null ) {

            return null;
        }

        CLRefProductType productType = regEntityFarmSupplierAssignment.getProductType();

        if ( productType == null ) {

            return null;
        }

        String localisedName = productType.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
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

    private String mEntityTypeLocalisedName(RegEntity regEntity) {

        if ( regEntity == null ) {

            return null;
        }

        CLAppEntityType entityType = regEntity.getEntityType();

        if ( entityType == null ) {

            return null;
        }

        String localisedName = entityType.getLocalisedName();

        if ( localisedName == null ) {

            return null;
        }

        return localisedName;
    }

    private String eWorkingPermitResourcePath(RegEntityStaff regEntityStaff) {

        if ( regEntityStaff == null ) {

            return null;
        }

        Attachment workingPermit = regEntityStaff.getWorkingPermit();

        if ( workingPermit == null ) {

            return null;
        }

        String resourcePath = workingPermit.getResourcePath();

        if ( resourcePath == null ) {

            return null;
        }

        return resourcePath;
    }
}

