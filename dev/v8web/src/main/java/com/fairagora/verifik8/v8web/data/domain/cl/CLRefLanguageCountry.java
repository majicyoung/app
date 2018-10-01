package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_ref_language_countries")
public class CLRefLanguageCountry extends CodeListSupport {

    @JoinColumn(name = "CL_LANGUAGE_ID")
    @ManyToOne(optional = false)
    protected CLRefLanguage refLanguage;

    public CLRefLanguage getLanguage() {
        return refLanguage;
    }

    public void setLanguage(CLRefLanguage refLanguage) {
        this.refLanguage = refLanguage;
    }

    @JoinColumn(name = "CL_COUNTRY_ID")
    @ManyToOne(optional = false)
    protected CLRefCountry refCountry;

    public CLRefCountry getCountry() {
        return refCountry;
    }

    public void setCountry(CLRefCountry refCountry) {
        this.refCountry = refCountry;
    }

}
