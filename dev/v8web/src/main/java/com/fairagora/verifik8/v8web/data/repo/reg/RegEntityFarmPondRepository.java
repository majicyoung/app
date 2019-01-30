package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmPond;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface RegEntityFarmPondRepository extends JpaRepository<RegEntityFarmPond, Long> {

	List<RegEntityFarmPond> findByFarmId(Long id);

	@Query(name = "SELECT * FROM reg_entity_farmaq_ponds WHERE ID = :id")
	RegEntityFarmPond findById(@Param("id") Long id);

}
