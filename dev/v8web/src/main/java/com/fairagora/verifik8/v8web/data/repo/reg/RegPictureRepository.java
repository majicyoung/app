package com.fairagora.verifik8.v8web.data.repo.reg;

import com.fairagora.verifik8.v8web.data.domain.reg.RegPicture;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffSafety;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RegPictureRepository extends JpaRepository<RegPicture, Long> {

	public Optional<RegPicture> findByPictureId(Long pictureId);

}
