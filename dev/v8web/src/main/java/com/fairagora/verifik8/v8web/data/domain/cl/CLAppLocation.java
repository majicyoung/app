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
    protected CLRefCountry clCountryId;

    public CLRefCountry getClCountryId() {
        return clCountryId;
    }

    public void setClCountryId(CLRefCountry clCountryId) {
        this.clCountryId = clCountryId;
    }

    @JoinColumn(name = "CL_REF_REGION_ID")
    @ManyToOne(optional = true)
    protected CLRefRegion clRefRegionId;

    public CLRefRegion getClRefRegionId() {
        return clRefRegionId;
    }

    public void setClRefRegionId(CLRefRegion clRefRegionId) {
        this.clRefRegionId = clRefRegionId;
    }

    @JoinColumn(name = "CL_APP_CONSTRUCTION_LOCATION_TYPE")
    @ManyToOne(optional = true)
    protected CLAppLocationType clAppConstructionLocationType;

    public CLAppLocationType getClAppConstructionLocationType() {
        return clAppConstructionLocationType;
    }

    public void setClAppConstructionLocationType(CLAppLocationType clAppConstructionLocationType) {
        this.clAppConstructionLocationType = clAppConstructionLocationType;
    }

}