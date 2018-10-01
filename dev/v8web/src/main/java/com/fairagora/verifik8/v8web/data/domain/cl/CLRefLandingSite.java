package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cl_ref_landing_sites")
public class CLRefLandingSite extends CodeListSupport {

    @JoinColumn(name = "CL_ADMIN_LEVEL_1_ID")
    @ManyToOne(optional = false)
    protected CLRefAdminLevel1 refAdminLevel1;

    public CLRefAdminLevel1 getAdminLevel1() {
        return refAdminLevel1;
    }

    public void setAdminLevel1(CLRefAdminLevel1 refAdminLevel1) {
        this.refAdminLevel1 = refAdminLevel1;
    }
}
