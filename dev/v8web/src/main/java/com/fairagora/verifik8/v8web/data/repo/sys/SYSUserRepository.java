package com.fairagora.verifik8.v8web.data.repo.sys;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SYSUserRepository extends JpaRepository<SYSUser, Long> {
    SYSUser findByEmail(String email);

    SYSUser findByPhoneNumber(String phoneNumber);

    @Query(value = "SELECT sys_users.* From sys_users INNER JOIN ( SELECT * from sys_users_stats group by SYS_USER_ID order by COUNT(*) desc ) as a ON sys_users.ID = a.SYS_USER_ID", nativeQuery = true)
    List<SYSUser> findBestRewardUsersByLogin();

}
