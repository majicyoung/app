package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class LanguageCountryKey implements Serializable {

    @Column(name = "CL_LANGUAGE_ID")
    protected Long clLanguageId;

    @Column(name = "CL_COUNTRY_ID")
    protected Long clCountryId;

    public LanguageCountryKey() {
    }

    public LanguageCountryKey(Long clLanguageId, Long clCountryId) {
        this.clLanguageId = clLanguageId;
        this.clCountryId = clCountryId;
    }

    public Long getClLanguageId() {
        return clLanguageId;
    }

    public void setClLanguageId(Long clLanguageId) {
        this.clLanguageId = clLanguageId;
    }

    public Long getClCountryId() {
        return clCountryId;
    }

    public void setClCountryId(Long clCountryId) {
        this.clCountryId = clCountryId;
    }
}
