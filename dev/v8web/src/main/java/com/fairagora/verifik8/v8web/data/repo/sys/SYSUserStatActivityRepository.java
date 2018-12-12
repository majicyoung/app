package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStat;
import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SYSUserStatActivityRepository  extends JpaRepository<SysUserStatActivity, Long> {


	int countAllBySysUserId(Long sysUserId);

	@Query(value = "SELECT * from sys_users_stats_activity" +
			"  left join dt_farmag_plot_management on sys_users_stats_activity.PLOT_ACTIVITY_ID = dt_farmag_plot_management.ID" +
			"  left join reg_entity_farmag_plots on dt_farmag_plot_management.REG_ENTITY_FARM_PLOT_ID = reg_entity_farmag_plots.ID" +
			"  where reg_entity_farmag_plots.REG_ENTITY_FARM_ID = :id", nativeQuery = true)
	List<SysUserStatActivity> findAllPlotsByFarmId(@Param("id") Long famId);

	@Query(value = "SELECT * from sys_users_stats_activity" +
			"  left join dt_farmaq_pond_management on sys_users_stats_activity.POND_ACTIVITY_ID = dt_farmaq_pond_management.ID" +
			"  left join reg_entity_farmaq_ponds on dt_farmaq_pond_management.REG_ENTITY_FARM_POND_ID = reg_entity_farmaq_ponds.ID" +
			"  where reg_entity_farmaq_ponds.REG_ENTITY_FARM_ID = :id", nativeQuery = true)
	List<SysUserStatActivity> findAllPondByFarmId(@Param("id") Long famId);


}
