package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SYSUserStatActivityRepository  extends JpaRepository<SysUserStatActivity, Long> {


	int countAllBySysUserId(Long sysUserId);

	@Query(value = "SELECT * from sys_users_stats_activity WHERE SYS_USER_ID IN :ids", nativeQuery = true)
	List<SysUserStatActivity> findAllBySysUserId(@Param("ids") Long[] sysUserId);


}
