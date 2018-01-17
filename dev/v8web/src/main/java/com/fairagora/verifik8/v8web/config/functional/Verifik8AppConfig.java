package com.fairagora.verifik8.v8web.config.functional;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.context.i18n.LocaleContextHolder;

public class Verifik8AppConfig {

	private String appName = "Verifik8";
	private final List<V8AppLanguage> languages;

	private boolean pondProfile;
	private boolean plotProfile;
	private boolean fishMngt;
	private String themeColor ;

	public Verifik8AppConfig() {
		languages = new ArrayList<>();
		languages.add(new V8AppLanguage().setup("English", "en"));
		languages.add(new V8AppLanguage().setup("Français", "fr"));
		languages.add(new V8AppLanguage().setup("Espanol", "es"));
		languages.add(new V8AppLanguage().setup("ไทย", "th"));
		languages.add(new V8AppLanguage().setup("tiếng Việt", "vt"));
	}

	public List<V8AppLanguage> getLanguages() {
		return languages;
	}

	public String getAppName() {
		return appName;
	}

	public String getThemeColor() {
		return themeColor;
	}

	public void setThemeColor(String themeColor) {
		this.themeColor = themeColor;
	}
	
	public V8AppLanguage getCurrentLanguage() {

		Locale l = LocaleContextHolder.getLocale();
		for (V8AppLanguage lng : languages) {
			if (l.getLanguage().equalsIgnoreCase(lng.i18n))
				return lng;
		}

		return languages.iterator().next();
	}

	public boolean isPondProfile() {
		return pondProfile;
	}

	public boolean isPlotProfile() {
		return plotProfile;
	}
	
	public boolean isFishMngt() {
		return fishMngt;
	}
	
	public void setPlotProfile(boolean plotProfile) {
		this.plotProfile = plotProfile;
	}

	public void setPondProfile(boolean pondProfile) {
		this.pondProfile = pondProfile;
	}

	public void setFishMngt(boolean fishMngt) {
		this.fishMngt = fishMngt;
	}

	
}
