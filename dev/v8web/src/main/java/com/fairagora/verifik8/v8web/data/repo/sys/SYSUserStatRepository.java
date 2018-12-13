package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SYSUserStatRepository extends JpaRepository<SysUserStat, Long> {



	//@Query(value = "SELECT count(*) from sys_users_stats WHERE SYS_USER_ID = 1", nativeQuery = true)
	int countAllBySysUserId(Long sysUserId);

	@Query(value = "SELECT count(*) from sys_users_stats WHERE SYS_USER_ID IN :ids", nativeQuery = true)
	int countAllBySysUserId(@Param("ids")  Long[]  sysUserId);

	@Query(value = "SELECT * from sys_users_stats WHERE SYS_USER_ID IN :ids", nativeQuery = true)
	List<SysUserStat> findAllBySysUserId(@Param("ids") Long[] sysUserId);

	@Query(value = "SELECT * from sys_users_stats WHERE SYS_USER_ID IN :ids AND CAST(CONNECTION_TIME AS DATE) != CAST(CURRENT_TIMESTAMP AS DATE) order by CONNECTION_TIME LIMIT 1", nativeQuery = true)
	SysUserStat findFirstBySysUserId(@Param("ids") Long[] sysUserId);

}
