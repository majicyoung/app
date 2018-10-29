package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSVerificationToken;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.Date;
import java.util.stream.Stream;

public interface SYSVerificationTokenRepository extends JpaRepository<SYSVerificationToken, Long> {

    SYSVerificationToken findByToken(String token);

    SYSVerificationToken findBySysUser(SYSUser sysUser);

    Stream<SYSVerificationToken> findAllByExpiryDateLessThan(Date now);

    void deleteByExpiryDateLessThan(Date now);

    @Modifying
    @Query(value = "delete from SYSVerificationToken t where t.expiryDate <= ?1")
    void deleteAllExpiredSince(Date now);
}
