package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SYSUserStatRepository extends JpaRepository<SysUserStat, Long> {



	//@Query(value = "SELECT count(*) from sys_users_stats WHERE SYS_USER_ID = 1", nativeQuery = true)
	int countAllBySysUserId(Long sysUserId);

	List<SysUserStat> findAllBySysUserId(Long sysUserId);

}
