package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSPasswordResetToken;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.Date;
import java.util.stream.Stream;

public interface SYSPasswordResetTokenRepository extends JpaRepository<SYSPasswordResetToken, Long> {

    SYSPasswordResetToken findByToken(String token);

    SYSPasswordResetToken findBySysUser(SYSUser sysUser);

    Stream<SYSPasswordResetToken> findAllByExpiryDateLessThan(Date now);

    void deleteByExpiryDateLessThan(Date now);

    @Modifying
    @Query("delete from SYSPasswordResetToken t where t.expiryDate <= ?1")
    void deleteAllExpiredSince(Date now);
}
