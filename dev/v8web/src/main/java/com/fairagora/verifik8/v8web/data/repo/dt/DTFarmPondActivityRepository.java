package com.fairagora.verifik8.v8web.data.repo.dt;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.dt.DTFarmPondActivity;

public interface DTFarmPondActivityRepository extends JpaRepository<DTFarmPondActivity, Long> {

	List<DTFarmPondActivity> findByPondId(Long pondId);

	DTFarmPondActivity findById(Long id);

}
