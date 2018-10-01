package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity()
@Table(name = "cl_app_locations")
public class CLAppLocation extends CodeListSupport {

    @JoinColumn(name = "CL_REF_COUNTRY_ID")
    @ManyToOne(optional = true)
    protected CLRefCountry refCountry;

    public CLRefCountry getRefCountry() {
        return refCountry;
    }

    public void setEntityType(CLRefCountry refCountry) {
        this.refCountry = refCountry;
    }

    @JoinColumn(name = "CL_REF_REGION_ID")
    @ManyToOne(optional = true)
    protected CLRefRegion refRegion;

    public CLRefRegion getRefRegion() {
        return refRegion;
    }

    public void setRefRegion(CLRefRegion refRegion) {
        this.refRegion = refRegion;
    }

    @JoinColumn(name = "CL_APP_CONSTRUCTION_LOCATION_TYPE")
    @ManyToOne(optional = true)
    protected CLAppLocationType appLocationType;

    public CLAppLocationType getAppLocationType() {
        return appLocationType;
    }

    public void setAppLocationType(CLAppLocationType appLocationType) {
        this.appLocationType = appLocationType;
    }
}
