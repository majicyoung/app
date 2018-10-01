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
    protected CLRefCountry country;

    public CLRefCountry getRefCountry() {
        return country;
    }

    public void setRefCountry(CLRefCountry country) {
        this.country = country;
    }

}
