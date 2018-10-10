package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_ref_languages_countries")
public class CLRefLanguageCountry extends CodeListSupport {

    @JoinColumn(name = "CL_LANGUAGE_ID")
    @ManyToOne(optional = false)
    protected CLRefLanguage clLanguageId;

    @JoinColumn(name = "CL_COUNTRY_ID")
    @ManyToOne(optional = false)
    protected CLRefCountry clCountryId;

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
}
