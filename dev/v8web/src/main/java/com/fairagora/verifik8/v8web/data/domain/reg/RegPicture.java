package com.fairagora.verifik8.v8web.data.domain.reg;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.commons.AttachmentInterface;

import javax.persistence.*;
import java.io.Serializable;

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

	@Column(name = "X_CLASS")
	protected String classType;

	@Column(name = "X_ID")
	protected Long xID;

	@Column(name = "POSITION")
	protected String position;

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

	public Long getxID() {
		return xID;
	}

	public void setxID(Long xID) {
		this.xID = xID;
	}

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
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
