package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface DTFarmPondActivityRepository extends JpaRepository<DTFarmPondActivity, Long> {


	List<DTFarmPondActivity> findByPondId(Long pondId);


	@Override
	@Query(value = "SELECT * FROM dt_farmaq_pond_management where ID = :id LIMIT  1", nativeQuery = true)
	DTFarmPondActivity getOne(@Param("id") Long id);
}
