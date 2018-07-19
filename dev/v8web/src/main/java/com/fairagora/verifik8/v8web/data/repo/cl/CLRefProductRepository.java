package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CLRefProductRepository extends CodeListRepository<CLRefProduct> {

	List<CLRefProduct> findByEnabledTrueOrderByName();


	@Query(value = "SELECT cl_ref_products.* FROM cl_ref_products LEFT OUTER JOIN cl_ref_product_types ON cl_ref_products.CL_PRODUCTS_TYPE_ID = cl_ref_product_types.ID LEFT OUTER JOIN jt_pond_activity_product_types ON cl_ref_product_types.ID = jt_pond_activity_product_types.CL_PRODUCT_TYPE_ID WHERE jt_pond_activity_product_types.CL_FARM_POND_ACTIVITY_ID = :activityId AND cl_ref_products.ENABLED = TRUE ORDER BY cl_ref_products.NAME", nativeQuery = true)
	List<CLRefProduct> getFindByEnabledTrueAndFActivityIdOrderByName(@Param("activityId")  Long activityId);

	@Query(value = "SELECT cl_ref_products.* FROM cl_ref_products ", nativeQuery = true)
	List<CLRefProduct> getFindByEnabledTrueAndPlotActivityIdOrderByName(@Param("activityId")  Long activityId);

}
