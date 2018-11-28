package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SYSUserStatActivityRepository  extends JpaRepository<SysUserStatActivity, Long> {


//	@Query(value = "select * from sys_users_stats_activity where sys_users_stats_activity.DT_FARM_PLOT_ACTIVITY_ID is not null LIMIT 10", nativeQuery = true)
//	List<SysUserStatActivity> getPlotUserStatActivity();

	@Query(value = "select * from sys_users_stats_activity where sys_users_stats_activity.DT_FARM_POND_ACTIVITY_ID is not null LIMIT 10", nativeQuery = true)
	List<SysUserStatActivity> getPondUserStatActivity();


}
