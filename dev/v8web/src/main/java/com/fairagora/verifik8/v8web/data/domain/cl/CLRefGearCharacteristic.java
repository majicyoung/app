package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "cl_ref_gear_characteristics")
public class CLRefGearCharacteristic extends BaseCodeListSupport {

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
        return null;
    }

    @Override
    public void setId(Long id) {
    }

    @Override
    public String getName() {
        return "";
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getValueMeasure() {
        return valueMeasure;
    }

    public void setValueMeasure(String valueMeasure) {
        this.valueMeasure = valueMeasure;
    }

    public Long getClValueMeasureUnitId() {
        return clValueMeasureUnitId;
    }

    public void setClValueMeasureUnitId(Long clValueMeasureUnitId) {
        this.clValueMeasureUnitId = clValueMeasureUnitId;
    }

    public String getValueText() {
        return valueText;
    }

    public void setValueText(String valueText) {
        this.valueText = valueText;
    }

    public String getValueCode() {
        return valueCode;
    }

    public void setValueCode(String valueCode) {
        this.valueCode = valueCode;
    }

    public Date getValueDate() {
        return valueDate;
    }

    public void setValueDate(Date valueDate) {
        this.valueDate = valueDate;
    }

    public String getValueIndicator() {
        return valueIndicator;
    }

    public void setValueIndicator(String valueIndicator) {
        this.valueIndicator = valueIndicator;
    }

    public Float getValueQuantity() {
        return valueQuantity;
    }

    public void setValueQuantity(Float valueQuantity) {
        this.valueQuantity = valueQuantity;
    }

    public Long getClValueQuantityUnitId() {
        return clValueQuantityUnitId;
    }

    public void setClValueQuantityUnitId(Long clValueQuantityUnitId) {
        this.clValueQuantityUnitId = clValueQuantityUnitId;
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
