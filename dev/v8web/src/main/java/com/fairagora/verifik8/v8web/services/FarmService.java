package com.fairagora.verifik8.v8web.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fairagora.verifik8.v8web.data.domain.cl.CLEntityType;
import com.fairagora.verifik8.v8web.data.domain.commons.V8Measure;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityRepository;
import com.fairagora.verifik8.v8web.services.enhanced.V8Farm;
import com.fairagora.verifik8.v8web.services.enhanced.dtomapping.V8EnhancedDtoMapper;

@Service
public class FarmService extends AbstractV8Service {

	@Autowired
	private RegEntityRepository regEntityRepository;

	@Autowired
	private V8EnhancedDtoMapper enhancedMapper;

	/**
	 * Return a list of Model Enhanced Farms, useful for display form meta
	 * data, in an optimized way 
	 * 
	 * @return
	 */
	public List<V8Farm> listFarms() {
		List<V8Farm> farms = new ArrayList<>();

		// fetch how many staff member we have per farms
		Map<Long, Integer> staffCountPerFarms = new HashMap<>();
		jdbc.query("select REG_ENTITY_FARM_ID, COUNT(REG_ENTITY_ID) from reg_entity_staff GROUP BY REG_ENTITY_FARM_ID ",
				rs -> {
					staffCountPerFarms.put(rs.getLong(1), rs.getInt(2));
				});

		// fetch how many ponds we have per farm
		Map<Long, Integer> pondsCountPerFarms = new HashMap<>();
		jdbc.query("select REG_ENTITY_FARM_ID, COUNT(ID) from reg_entity_farmaq_ponds GROUP BY REG_ENTITY_FARM_ID ",
				rs -> {
					pondsCountPerFarms.put(rs.getLong(1), rs.getInt(2));
				});

		Map<Long, V8Measure> sizesPerFarms = new HashMap<>();
		jdbc.query("select ID, SIZE,CL_SIZE_UNIT_ID FROM reg_entity_farm_details", rs -> {
			sizesPerFarms.put(rs.getLong(1),
					new V8Measure().setup(rs.getFloat(2), clQtUnityRepository.findOne(rs.getLong(3))));
		});

		List<RegEntity> farmsEntities = regEntityRepository.findByEntityTypeCode(CLEntityType.CODE_FARM);
		for (RegEntity e : farmsEntities) {
			V8Farm f = new V8Farm();
			enhancedMapper.enhance(e, f);
			f.setStaffCount(staffCountPerFarms.getOrDefault(e.getId(), 0));
			f.setPondsCount(pondsCountPerFarms.getOrDefault(e.getId(), 0));
			f.setSize(sizesPerFarms.get(e.getId()));
			farms.add(f);
		}

		return farms;
	}
}
