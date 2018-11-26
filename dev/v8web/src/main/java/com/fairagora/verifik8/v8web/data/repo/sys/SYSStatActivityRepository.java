package com.fairagora.verifik8.v8web.data.repo.sys;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.domain.sys.SysStatActivity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SYSStatActivityRepository extends JpaRepository<SysStatActivity, Long> {
}
