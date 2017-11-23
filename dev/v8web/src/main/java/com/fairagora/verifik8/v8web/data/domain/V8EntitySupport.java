package com.fairagora.verifik8.v8web.data.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;

import org.springframework.security.core.context.SecurityContextHolder;

import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.infra.ApplicationContextProvider;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;

@MappedSuperclass
public abstract class V8EntitySupport extends V8Base  implements V8Entity {

	

}
