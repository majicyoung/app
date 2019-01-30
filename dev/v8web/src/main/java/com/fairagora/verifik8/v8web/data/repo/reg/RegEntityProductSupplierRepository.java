package com.fairagora.verifik8.v8web.data.repo.reg;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmSupplierAssignment;
import com.fairagora.verifik8.v8web.data.domain.reg.product.RegEntityProductSupplier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface RegEntityProductSupplierRepository extends JpaRepository<RegEntityProductSupplier, Long> {

//	@Override
//	@Query(value = "SELECT * FROM  reg_entity_product_suppliers WHERE id = ?1", nativeQuery = true)
//	RegEntityProductSupplier getOne(Long aLong);
}
