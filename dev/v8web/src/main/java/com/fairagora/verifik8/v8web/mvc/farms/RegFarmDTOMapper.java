package com.fairagora.verifik8.v8web.mvc.farms;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

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
import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaff;
import com.fairagora.verifik8.v8web.data.domain.reg.staff.RegEntityStaffContract;
import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyDto;
import com.fairagora.verifik8.v8web.mvc.companies.dto.CompanyListingDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTFarmAgProductionDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTSoilAnalysisDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.DTWaterAnalysisDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmEnvironmentalDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmFormDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPlotDto;
import com.fairagora.verifik8.v8web.mvc.farms.dto.FarmPondDto;
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
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondListingDto;
import com.fairagora.verifik8.v8web.mvc.ponds.dto.PondMeasurementDto;
import com.fairagora.verifik8.v8web.mvc.suppliers.dto.SupplierListingDto;

@Mapper(componentModel = "spring", uses = EntityDtoMapper.class, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface RegFarmDTOMapper {

	void toDto(RegEntity farm, @MappingTarget FarmFormDto dto);

	@Mapping(target = "id", ignore = true)
	@Mapping(target = "aerialView", ignore = true)
	@Mapping(target = "aerialViewUrl", source = "aerialView.resourcePath")
	void toDto(RegEntityFarmDetails farm, @MappingTarget FarmFormDto dto);

	@Mapping(target = "id", ignore = true)
	void fillEntity(FarmFormDto dto, @MappingTarget RegEntity farm);

	@Mapping(target = "id", ignore = true)
	void fillEntity(FarmFormDto dto, @MappingTarget RegEntityFarmDetails farm);

	void fillEntity(AddressDto dto, @MappingTarget Address adr);

	@Mapping(target = "environmentImpactAssessmentDoc", ignore = true)
	@Mapping(target = "environmentImpactAssessmentDocUrl", source = "environmentImpactAssessmentDoc.resourcePath")
	@Mapping(target = "contructionPermit", ignore = true)
	@Mapping(target = "contructionPermitUrl", source = "contructionPermit.resourcePath")
	@Mapping(target = "landTitle", ignore = true)
	@Mapping(target = "landTitleUrl", source = "landTitle.resourcePath")
	@Mapping(target = "sittingProtectedAreaDoc", ignore = true)
	@Mapping(target = "sittingProtectedAreaUrl", source = "sittingProtectedAreaDoc.resourcePath")
	@Mapping(target = "canalRestorationPlan", ignore = true)
	@Mapping(target = "canalRestorationPlanUrl", source = "canalRestorationPlan.resourcePath")
	@Mapping(target = "cumulativeImpactStudy", ignore = true)
	@Mapping(target = "cumulativeImpactStudyUrl", source = "cumulativeImpactStudy.resourcePath")
	void toDto(RegEntityFarmDetails farm, @MappingTarget FarmEnvironmentalDto dto);

	void toDto(Address adr, @MappingTarget AddressDto dto);

	@Mapping(target = "workAccidentRecord", ignore = true)
	@Mapping(target = "workAccidentRecordUrl", source = "workAccidentRecord.resourcePath")
	@Mapping(target = "farmPolicies", ignore = true)
	@Mapping(target = "farmPoliciesUrl", source = "farmPolicies.resourcePath")
	void toDto(RegEntityStaffManagement findByFarmId, @MappingTarget StaffGeneralInfoSto dto);

	void toDto(RegEntityFarmPond m, @MappingTarget FarmPondDto dto);

	void fillEntity(FarmPondDto dto, @MappingTarget RegEntityFarmPond m);

	void toDto(RegEntityFarmPlot m, @MappingTarget FarmPlotDto dto);

	void toDto(RegEntityFarmPlot m, @MappingTarget PlotListingDto dto);

	void fillEntity(FarmPlotDto dto, @MappingTarget RegEntityFarmPlot m);

	void toDto(DTFarmPlotMeasurement m, @MappingTarget PlotMeasurementDto dto);

	void fillEntity(PlotMeasurementDto dto, @MappingTarget DTFarmPlotMeasurement m);

	@Mapping(source = "m.activityType.name", target = "activityName")
	void toDto(DTFarmPlotActivity m, @MappingTarget PlotActivityDto dto);

	void fillEntity(PlotActivityDto dto, @MappingTarget DTFarmPlotActivity m);

	void toDto(V8Measure m, @MappingTarget V8MeasureDto dto);

	@Mapping(source = "m.unit.name", target = "unitName")
	V8MeasureDto toDto(V8Measure m);

	void fillEntity(V8MeasureDto dto, @MappingTarget V8Measure m);

	default String map(Attachment at) {
		return at == null ? null : at.getResourcePath();
	}

	default Attachment map(String url) {
		if (url == null)
			return null;
		else {
			Attachment a = new Attachment();
			a.setResourcePath(url);
			return a;
		}
	}

	PlotListingDto toListing(RegEntityFarmPlot p);

	PondListingDto toListing(RegEntityFarmPond p);

	void toDto(DTFarmPondMeasurement act, @MappingTarget PondMeasurementDto dto);

	void fillEntity(PondMeasurementDto dto, @MappingTarget DTFarmPondMeasurement measure);

	void toDto(DTFarmAgProduction act, @MappingTarget DTFarmAgProductionDto dto);

	@Mapping(source = "e.commodities.name", target = "commoditiesName")
	DTFarmAgProductionDto toProductionDto(DTFarmAgProduction e);

	@Mapping(source = "e.plot.number", target = "plotNumber")
	@Mapping(source = "e.soilAnalysisType.name", target = "soilAnalysisTypeName")
	@Mapping(target = "analysis", ignore = true)
	@Mapping(target = "analysisUrl", source = "analysis.resourcePath")
	DTSoilAnalysisDto toSoilAnalysisDto(DTSoilAnalysis e);

	@Mapping(source = "e.pond.number", target = "pondNumber")

	@Mapping(target = "analysis", ignore = true)
	@Mapping(target = "analysisUrl", source = "analysis.resourcePath")
	DTWaterAnalysisDto toWaterAnalysisDto(DTWaterAnalysis e);

	void fillEntity(DTFarmAgProductionDto dto, @MappingTarget DTFarmAgProduction measure);

	@Mapping(source = "m.supplier.address.city", target = "city")
	SupplierListingDto toListing(RegEntityFarmSupplierAssignment m);

	@Mapping(source = "m.address.city", target = "city")
	IndividualListingDto toListing(RegEntity m);

	void toDto(RegEntity e, @MappingTarget IndividualDto dto);

	@Mapping(target = "id", ignore = true)
	void fillEntity(IndividualDto dto, @MappingTarget RegEntity ind);

	@Mapping(source = "m.address.city", target = "city")
	CompanyListingDto toCompListing(RegEntity m);

	void toDto(RegEntity ind, @MappingTarget CompanyDto dto);

	@Mapping(target = "id", ignore = true)
	void fillEntity(CompanyDto dto, @MappingTarget RegEntity ind);

	@Mapping(target = "farmId", ignore = true)
	void fillEntity(StaffGeneralInfoSto farmDto, @MappingTarget RegEntityStaffManagement ent);

	void fillEntity(FarmEnvironmentalDto farmDto, @MappingTarget RegEntityFarmDetails farmDetails);

	void fillEntity(DTWaterAnalysisDto dto, @MappingTarget DTWaterAnalysis analysis);

	void fillEntity(DTSoilAnalysisDto dto, @MappingTarget DTSoilAnalysis analysis);

	// -- STAFF
	@Mapping(target = "workingPermit", ignore = true)
	@Mapping(target = "workingPermitUrl", source = "workingPermit.resourcePath")
	StaffFarmFormDto toDto(RegEntityStaff e);

	void fillEntity(StaffFarmFormDto dto, @MappingTarget RegEntityStaff e);

	StaffContractDto toDto(RegEntityStaffContract e);

	void fillEntity(StaffContractDto dto, @MappingTarget RegEntityStaffContract e);
}
