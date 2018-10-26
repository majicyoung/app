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
    protected CLRefAdminLevel1 clAdminLevel1Id;

    public CLRefAdminLevel1 getClAdminLevel1Id() {
        return clAdminLevel1Id;
    }

    public void setClAdminLevel1Id(CLRefAdminLevel1 clAdminLevel1Id) {
        this.clAdminLevel1Id = clAdminLevel1Id;
    }
}
