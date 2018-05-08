package com.fairagora.verifik8.v8web.data.domain.reg;
import com.fairagora.verifik8.v8web.data.domain.commons.AttachmentInterface;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.infra.ApplicationContextProvider;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.persistence.*;
import java.util.Date;

@Entity()
@Table(name = "reg_pictures")
public class RegPicture implements AttachmentInterface {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PICTURE_ID")
	protected Long pictureId;

	@Column(name = "NAME")
	protected String name;

	@Column(name = "RESOURCE_PATH")
	protected String resourcePath;

	@Column(name = "CREATED_AT")
	protected Date createdAt;

	@Column(name = "UPDATED_AT")
	protected Date updatedAt;

	@Column(name = "COMMENT")
	protected String comment = "";

	@PrePersist
	protected void prePersist() {
		if (this.createdAt == null)
			this.createdAt = new Date();
		this.updatedAt = new Date();
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


	public Long getPictureId() {
		return pictureId;
	}

	public void setPictureId(Long pictureId) {
		this.pictureId = pictureId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String getResourcePath() {
		return resourcePath;
	}

	@Override
	public void setResourcePath(String resourcePath) {
		this.resourcePath = resourcePath;
	}
}
