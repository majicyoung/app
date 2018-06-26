package com.fairagora.verifik8.v8web.data.domain.commons;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Attachment implements AttachmentInterface {

	@Column(name = "RESPATH")
	protected String resourcePath;

	@Override
	public String getResourcePath() {
		return resourcePath;
	}

	@Override
	public void setResourcePath(String resourcePath) {
		this.resourcePath = resourcePath;
	}

}
