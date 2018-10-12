package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;

import javax.persistence.*;

@Entity
@Table(name = "cl_ref_languages_countries")
public class CLRefLanguageCountry extends V8EntitySupport {

    @EmbeddedId
    protected LanguageCountryKey key;

    @ManyToOne(optional = false)
    @MapsId("clLanguageId")
    @JoinColumn(name = "CL_LANGUAGE_ID")
    protected CLRefLanguage clLanguageId;

    @ManyToOne(optional = false)
    @MapsId("clCountryId")
    @JoinColumn(name = "CL_COUNTRY_ID")
    protected CLRefCountry clCountryId;

    @Column(name = "ENABLED")
    protected boolean enabled;

    @Column(name = "CODE", unique = true, length = 2, nullable = false)
    protected String code;

    @Column(name = "RANKING", length = 6, nullable = false)
    protected Long ranking;

    @Column(name = "NAME", length = 64, nullable = false)
    protected String name;

    @Column(name = "DESCRIPTION", length = 128, nullable = false)
    protected String description;

    @Column(name = "I18N_DEFAULT", length = 256, nullable = false)
    protected String i18nDefault;

    @Column(name = "I18N_EN", length = 256, nullable = false)
    protected String i18nEn;

    @Column(name = "I18N_FR", length = 256, nullable = false)
    protected String i18nFr;

    @Column(name = "I18N_ES", length = 256, nullable = false)
    protected String i18nEs;

    @Column(name = "I18N_TH", length = 256, nullable = false)
    protected String i18nTh;

    @Column(name = "I18N_VT", length = 256, nullable = false)
    protected String i18nVt;

    @Column(name = "I18N_LA", length = 256, nullable = false)
    protected String i18nLa;

    @Column(name = "I18N_ID", length = 256, nullable = false)
    protected String i18nId;

    @Column(name = "I18N_KH", length = 256, nullable = false)
    protected String i18nKh;

    @PrePersist
    void prePersistId() {
        if (key == null) key = new LanguageCountryKey();
        key.clLanguageId = clLanguageId.getId();
        key.clCountryId = clCountryId.getId();
    }

    public CLRefLanguage getClLanguageId() {
        return clLanguageId;
    }

    public void setClLanguageId(CLRefLanguage clLanguageId) {
        this.clLanguageId = clLanguageId;
    }

    public CLRefCountry getClCountryId() {
        return clCountryId;
    }

    public void setClCountryId(CLRefCountry clCountryId) {
        this.clCountryId = clCountryId;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Long getRanking() {
        return ranking;
    }

    public void setRanking(Long ranking) {
        this.ranking = ranking;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getI18nDefault() {
        return i18nDefault;
    }

    public void setI18nDefault(String i18nDefault) {
        this.i18nDefault = i18nDefault;
    }

    public String getI18nEn() {
        return i18nEn;
    }

    public void setI18nEn(String i18nEn) {
        this.i18nEn = i18nEn;
    }

    public String getI18nFr() {
        return i18nFr;
    }

    public void setI18nFr(String i18nFr) {
        this.i18nFr = i18nFr;
    }

    public String getI18nEs() {
        return i18nEs;
    }

    public void setI18nEs(String i18nEs) {
        this.i18nEs = i18nEs;
    }

    public String getI18nTh() {
        return i18nTh;
    }

    public void setI18nTh(String i18nTh) {
        this.i18nTh = i18nTh;
    }

    public String getI18nVt() {
        return i18nVt;
    }

    public void setI18nVt(String i18nVt) {
        this.i18nVt = i18nVt;
    }

    public String getI18nLa() {
        return i18nLa;
    }

    public void setI18nLa(String i18nLa) {
        this.i18nLa = i18nLa;
    }

    public String getI18nId() {
        return i18nId;
    }

    public void setI18nId(String i18nId) {
        this.i18nId = i18nId;
    }

    public String getI18nKh() {
        return i18nKh;
    }

    public void setI18nKh(String i18nKh) {
        this.i18nKh = i18nKh;
    }

    @Override
    public Long getId() {
        return null;
    }

    @Override
    public void setId(Long id) {
    }

    @Override
    public String getName() {
        return name;
    }

}