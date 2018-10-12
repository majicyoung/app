package com.fairagora.verifik8.v8web.data.repo.sys;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface SYSUserRepository extends JpaRepository<SYSUser, Long> {

	SYSUser findByEmail(String email);

	SYSUser findByPhoneNumber(String phoneNumber);
}
