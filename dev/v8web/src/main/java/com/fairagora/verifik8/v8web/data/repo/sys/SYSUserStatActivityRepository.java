package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SysUserStatActivity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SYSUserStatActivityRepository  extends JpaRepository<SysUserStatActivity, Long> {


	int countAllBySysUserId(Long sysUserId);


}
