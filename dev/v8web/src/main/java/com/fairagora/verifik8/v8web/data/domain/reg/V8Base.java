package com.fairagora.verifik8.v8web.data.domain.reg;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.Transient;

import org.springframework.security.core.context.SecurityContextHolder;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.infra.ApplicationContextProvider;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;

@MappedSuperclass
public abstract class V8Base {
	/**
	 * when there would be nobody logged, we need to find some machine user
	 */
	private static final long DEFAULT_SYSTEM_USER = 1l;
	/*
	 * client id for oauth
	 */
	@Transient
	protected String clientId;

	@ManyToOne()
	@JoinColumn(name = "UPDATER_ID")
	protected SYSUser updater;

	@Column(name = "CREATED_AT")
	protected Date createdAt;

	@Column(name = "UPDATED_AT")
	protected Date updatedAt;

	@Column(name = "COMMENT")
	protected String comment = "";

	@PrePersist
	protected void prePersist() {
		if (this.createdAt == null)
			this.createdAt = new Date();{
			this.updatedAt = new Date();
		}

		if (SecurityContextHolder.getContext().getAuthentication() == null ||
				SecurityContextHolder.getContext().getAuthentication().getName().equals(this.clientId)){
			this.updater = ApplicationContextProvider.getApplicationContext().getBean(SYSUserRepository.class)
					.findOne(DEFAULT_SYSTEM_USER);
		}else{
			this.updater = ApplicationContextProvider.getApplicationContext().getBean(SYSUserRepository.class)
					.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
		}


	}

	public SYSUser getUpdater() {
		return updater;
	}

	public void setUpdater(SYSUser updater) {
		this.updater = updater;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
	
}
