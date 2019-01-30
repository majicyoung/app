package com.fairagora.verifik8.v8web.data.repo.sys;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface SYSUserRepository extends JpaRepository<SYSUser, Long> {
    SYSUser findByEmail(String email);

    SYSUser findByPhoneNumber(String phoneNumber);

    @Query(value = "SELECT sys_users.* From sys_users INNER JOIN ( SELECT SYS_USER_ID from sys_users_stats WHERE CONNECTION_TIME >= STR_TO_DATE( :startDate, '%Y-%m-%d') AND CONNECTION_TIME <= STR_TO_DATE( :endDate , '%Y-%m-%d') group by SYS_USER_ID order by COUNT(*) desc ) as a ON sys_users.ID = a.SYS_USER_ID", nativeQuery = true)
    List<SYSUser> findBestRewardUsersByLogin(@Param("startDate") String startDate, @Param("endDate") String endDate);

    @Query(value = "SELECT sys_users.* From sys_users INNER JOIN ( SELECT SYS_USER_ID from sys_users_stats WHERE CONNECTION_TIME >= STR_TO_DATE( :startDate, '%Y-%m-%d') AND CONNECTION_TIME <= STR_TO_DATE( :endDate , '%Y-%m-%d') group by SYS_USER_ID order by COUNT(*) desc ) as a ON sys_users.ID = a.SYS_USER_ID WHERE SYS_ROLE_ID = :roleId", nativeQuery = true)
    List<SYSUser> findBestRewardUsersByRoleAndByLogin(@Param("startDate") String startDate, @Param("endDate") String endDate, @Param("roleId") String roleId);

    @Query(value = "SELECT sys_users.* From sys_users INNER  join ( SELECT SYS_USER_ID, max(CONNECTION_TIME) as CONNECTION_TIME from sys_users_stats WHERE CONNECTION_TIME >= STR_TO_DATE( :startDate, '%Y-%m-%d') AND CONNECTION_TIME <= STR_TO_DATE( :endDate , '%Y-%m-%d') group by SYS_USER_ID ) as a  ON sys_users.ID = a.SYS_USER_ID order by a.CONNECTION_TIME desc", nativeQuery = true)
    List<SYSUser> findLastestUsersByLogin(@Param("startDate") String startDate, @Param("endDate") String endDate);

    @Query(value = "SELECT sys_users.* From sys_users INNER  join ( SELECT SYS_USER_ID, max(CONNECTION_TIME) as CONNECTION_TIME from sys_users_stats WHERE CONNECTION_TIME >= STR_TO_DATE( :startDate, '%Y-%m-%d') AND CONNECTION_TIME <= STR_TO_DATE( :endDate , '%Y-%m-%d') group by SYS_USER_ID ) as a  ON sys_users.ID = a.SYS_USER_ID  WHERE SYS_ROLE_ID = :roleId order by a.CONNECTION_TIME desc", nativeQuery = true)
    List<SYSUser> findLastestUsersByRoleByLogin(@Param("startDate") String startDate, @Param("endDate") String endDate, @Param("roleId") String roleId);

    @Query(value = "SELECT sys_users.* From sys_users INNER JOIN ( SELECT SYS_USER_ID from sys_users_stats_activity  WHERE ACTIVITY_DATE >= STR_TO_DATE( :startDate, '%Y-%m-%d') AND ACTIVITY_DATE <= STR_TO_DATE( :endDate , '%Y-%m-%d')  group by SYS_USER_ID order by COUNT(*) desc ) as a ON sys_users.ID = a.SYS_USER_ID", nativeQuery = true)
    List<SYSUser> findBestRewardUsersByActivity(@Param("startDate") String startDate, @Param("endDate") String endDate);

    @Query(value = "SELECT sys_users.* From sys_users INNER JOIN ( SELECT SYS_USER_ID from sys_users_stats_activity  WHERE ACTIVITY_DATE >= STR_TO_DATE( :startDate, '%Y-%m-%d') AND ACTIVITY_DATE <= STR_TO_DATE( :endDate , '%Y-%m-%d')  group by SYS_USER_ID order by COUNT(*) desc ) as a ON sys_users.ID = a.SYS_USER_ID  WHERE SYS_ROLE_ID = :roleId  ", nativeQuery = true)
    List<SYSUser> findBestRewardUsersByRoleByActivity(@Param("startDate") String startDate, @Param("endDate") String endDate, @Param("roleId") String roleId);

    @Query(value = "SELECT sys_users.* From sys_users INNER  join ( SELECT SYS_USER_ID, max(ACTIVITY_DATE) as ACTIVITY_DATE from sys_users_stats_activity  WHERE ACTIVITY_DATE >= STR_TO_DATE( :startDate, '%Y-%m-%d') AND ACTIVITY_DATE <= STR_TO_DATE( :endDate , '%Y-%m-%d')  group by SYS_USER_ID ) as a  ON sys_users.ID = a.SYS_USER_ID order by a.ACTIVITY_DATE desc", nativeQuery = true)
    List<SYSUser> findLastestUsersByActivity(@Param("startDate") String startDate, @Param("endDate") String endDate);

    @Query(value = "SELECT sys_users.* From sys_users INNER  join ( SELECT SYS_USER_ID, max(ACTIVITY_DATE) as ACTIVITY_DATE from sys_users_stats_activity  WHERE ACTIVITY_DATE >= STR_TO_DATE( :startDate, '%Y-%m-%d') AND ACTIVITY_DATE <= STR_TO_DATE( :endDate , '%Y-%m-%d')  group by SYS_USER_ID ) as a  ON sys_users.ID = a.SYS_USER_ID  WHERE SYS_ROLE_ID = :roleId  order by a.ACTIVITY_DATE desc", nativeQuery = true)
    List<SYSUser> findLastestUsersByRoleByActivity(@Param("startDate") String startDate, @Param("endDate") String endDate, @Param("roleId") String roleId);

    List<SYSUser> findSYSUserByFarmId(Long farmId);

    @Query(value = "UPDATE sys_users SET active = false WHERE ID = :id", nativeQuery = true)
    void softDeleteUser(@Param("id") Long  id);

}
