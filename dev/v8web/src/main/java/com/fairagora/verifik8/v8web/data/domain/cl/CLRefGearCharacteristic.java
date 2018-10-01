package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "cl_ref_gear_characteristics")
public class CLRefGearCharacteristic extends CodeListSupport {

    @Column(name = "CL_REF_GEAR_ID")
    protected Long clRefGearId;

    @Column(name = "DESCRIPTION", length = 128, nullable = false)
    protected String description;

    @Column(name = "VALUE_MEASURE", length = 128, nullable = false)
    protected String valueMeasure;

    @Column(name = "CL_VALUE_MEASURE_UNIT_ID")
    protected Long clValueMeasureUnitId;

    @Column(name = "VALUE_TEXT", length = 128, nullable = false)
    protected String valueText;

    @Column(name = "VALUE_CODE", length = 128, nullable = false)
    protected String valueCode;

    @Column(name = "VALUE_DATE", nullable = false)
    protected Date valueDate;

    @Column(name = "VALUE_INDICATOR", length = 128, nullable = false)
    protected String valueIndicator;

    @Column(name = "VALUE_QUANTITY")
    protected Float valueQuantity;

    @Column(name = "CL_VALUE_QUANTITY_UNIT_ID")
    protected Long clValueQuantityUnitId;

    @Override
    public Long getId() {
        return clRefGearId;
    }

    @Override
    public void setId(Long id) {
        clRefGearId = id;
    }

    @Override
    public String getName() {
        return "";
    }

//    @Override
//    public Long getId() {
//        return clRefGearId;
//    }
//
//    @Override
//    public void setId(Long id) {
//
//    }
//
//    @Override
//    public String getName() {
//        return null;
//    }
}
