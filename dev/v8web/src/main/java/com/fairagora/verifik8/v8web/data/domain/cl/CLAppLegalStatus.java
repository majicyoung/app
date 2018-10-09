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
    protected CLRefCountry clRefCountryId;

    public CLRefCountry getClRefCountryId() {
        return clRefCountryId;
    }

    public void setClRefCountryId(CLRefCountry clRefCountryId) {
        this.clRefCountryId = clRefCountryId;
    }

}