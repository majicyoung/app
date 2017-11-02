package com.fairagora.verifik8.v8web.mvc.farms;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

import com.fairagora.verifik8.v8web.data.domain.commons.Address;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotActivity;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPlotMeasurement;
import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondMeasurement;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPlot;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmSupplierAssignment;
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
import com.fairagora.verifik8.v8web.mvc.suppliers.dto.SupplierListingDto;

@Mapper(componentModel = "spring", uses = EntityDtoMapper.class, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface RegFarmDTOMapper {

	void toDto(RegEntity farm, @MappingTarget FarmFormDto dto);

	@Mapping(target = "id", ignore = true)
	void toDto(RegEntityFarmDetails farm, @MappingTarget FarmFormDto dto);

	void fillEntity(FarmFormDto dto, @MappingTarget RegEntity farm);

	@Mapping(target = "id", ignore = true)
	void fillEntity(FarmFormDto dto, @MappingTarget RegEntityFarmDetails farm);

	void fillEntity(AddressDto dto, @MappingTarget Address adr);

	void toDto(RegEntityFarmDetails farm, @MappingTarget FarmEnvironmentalDto dto);

	void toDto(Address adr, @MappingTarget AddressDto dto);

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
		return at.getResourcePath();
	}

	PlotListingDto toListing(RegEntityFarmPlot p);

	PondListingDto toListing(RegEntityFarmPond p);

	void toDto(DTFarmPondMeasurement act, @MappingTarget PondMeasurementDto dto);

	void fillEntity(PondMeasurementDto dto, @MappingTarget DTFarmPondMeasurement measure);

	@Mapping(source = "m.supplier.address.city", target = "city")
	SupplierListingDto toListing(RegEntityFarmSupplierAssignment m);

}
