package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_app_legal_status")
public class CLAppLegalStatus extends CodeListSupport {

    @JoinColumn(name = "CL_COUNTRY_ID")
    @ManyToOne(optional = true)
    protected CLRefCountry clCountryId;

    public CLRefCountry getClCountryId() {
        return clCountryId;
    }

    public void setClCountryId(CLRefCountry clCountryId) {
        this.clCountryId = clCountryId;
    }
}