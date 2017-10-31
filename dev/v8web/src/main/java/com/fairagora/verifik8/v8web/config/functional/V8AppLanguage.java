package com.fairagora.verifik8.v8web.config.functional;

public class V8AppLanguage {

	public String name;
	public String i18n;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getI18n() {
		return i18n;
	}

	public void setI18n(String i18n) {
		this.i18n = i18n;
	}

	public V8AppLanguage setup(String name, String i18n) {
		this.name = name;
		this.i18n = i18n;
		return this;
	}

}
