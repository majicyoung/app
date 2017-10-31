package com.fairagora.verifik8.v8web.data.application;

/**
 * Simple
 * 
 * @author gregoire
 *
 */
public class V8Page {

	private String title;
	private String description;

	private String navBarPrefix;

	private String message;

	public String getNavBarPrefix() {
		return navBarPrefix;
	}

	public void setNavBarPrefix(String navBarPrefix) {
		this.navBarPrefix = navBarPrefix;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public String getDescription() {
		return description;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getNavActive(String str) {
		return str != null && navBarPrefix != null && str.startsWith(navBarPrefix) ? "active" : "";
	}

}
