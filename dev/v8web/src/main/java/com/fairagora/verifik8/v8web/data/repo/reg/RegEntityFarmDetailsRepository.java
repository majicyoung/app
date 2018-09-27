package com.fairagora.verifik8.v8web.data.repo.reg;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;

public interface RegEntityFarmDetailsRepository extends JpaRepository<RegEntityFarmDetails, Long> {

	Optional<RegEntityFarmDetails> findByEntityId(Long id);

	List<RegEntityFarmDetails> findByOwnerId(Long id);

	List<RegEntityFarmDetails> findByCooperativeId(Long id);

}
