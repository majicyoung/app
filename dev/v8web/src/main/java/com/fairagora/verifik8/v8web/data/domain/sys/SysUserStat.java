package com.fairagora.verifik8.v8web.data.domain.sys;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "sys_users_stats")
public class SysUserStat extends V8Base implements V8Entity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;


	@OneToOne(targetEntity = SYSUser.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false, name = "SYS_USER_ID")
	private SYSUser sysUser;

	@Column(name = "CONNECTION_TIME")
	private Date connectionTime;


	@Override
	public Long getId() {
		return id;
	}

	@Override
	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String getName() {
		return id.toString();
	}


	public SYSUser getSysUser() {
		return sysUser;
	}

	public void setSysUser(SYSUser sysUser) {
		this.sysUser = sysUser;
	}

	public Date getConnectionTime() {
		return connectionTime;
	}

	public void setConnectionTime(Date connectionTime) {
		this.connectionTime = connectionTime;
	}
}
