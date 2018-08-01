package com.fairagora.verifik8.v8web.api.pond;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fairagora.verifik8.v8web.api.pond.data.ApiPond;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmPondRepository;

@RestController
public class PondApiController {

	@Autowired
	private RegEntityFarmPondRepository farmPondRepository;

	@RequestMapping(value = "/blue/pond/{pondId}", method = RequestMethod.GET)
	public ApiPond loadPond(@PathVariable("pondId") Long pondId) {
		RegEntityFarmPond pound = farmPondRepository.findOne(pondId);

		if (pound != null) {
			ApiPond p = new ApiPond();
			p.setId(pound.getId());
			p.setDescription(pound.getDescription());
			p.setFarm(pound.getFarm().getId());
			p.setSize(pound.getSize());
			p.setSpecies(pound.getSpecies() == null ? null : pound.getSpecies().getId());
			return p;
		}

		return null;
	}

	@RequestMapping(value = "/blue/ponds-by-farm/{farmId}", method = RequestMethod.GET)
	public List<ApiPond> loadPondsByFarm(@PathVariable("farmId") Long farmId) {

		List<RegEntityFarmPond> ponds = farmPondRepository.findByFarmId(farmId);

		List<ApiPond> apiPonds = new ArrayList<>();
		for (RegEntityFarmPond pound : ponds) {

			ApiPond p = new ApiPond();
			p.setId(pound.getId());
			p.setDescription(pound.getDescription());
			p.setFarm(pound.getFarm().getId());
			p.setSize(pound.getSize());
			p.setSpecies(pound.getSpecies() == null ? null : pound.getSpecies().getId());
			apiPonds.add(p);
		}

		return apiPonds;
	}

}
