package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppQuantityUnit;

public interface CLAppQuantityUnitRepository extends CodeListRepository<CLAppQuantityUnit> {

	List<CLAppQuantityUnit> findByEnabledTrueOrderByName();
	
	@Query(value = "SELECT * FROM cl_app_quantity_units as qu "
			+ "WHERE qu.CL_QUANTITY_UNIT_TYPE_ID=2 OR "
			+ "qu.CL_QUANTITY_UNIT_TYPE_ID=3 OR "
			+ "qu.CL_QUANTITY_UNIT_TYPE_ID=4 AND qu.ENABLED = TRUE ORDER BY qu.NAME", nativeQuery = true)
	List<CLAppQuantityUnit> getQuantityUnit();

}
