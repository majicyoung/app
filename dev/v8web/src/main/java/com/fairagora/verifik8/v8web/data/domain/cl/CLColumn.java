package com.fairagora.verifik8.v8web.data.domain.cl;

import javax.persistence.*;

@Entity
@Table(name = "cl_columns")
public class CLColumn {

    @Id
    @Column(name = "TABLE_NAME")
    protected String tableName;

    @Column(name = "ID")
    protected boolean id;

    @Column(name = "ENABLED")
    protected boolean enabled;

    @Column(name = "CODE")
    protected boolean code;

    @Column(name = "RANKING")
    protected boolean ranking;

    @Column(name = "NAME")
    protected boolean name;

    @Column(name = "DESCRIPTION")
    protected boolean description;

    @Column(name = "I18n_DEFAULT")
    protected boolean i18nDefault;

    @Column(name = "I18N_EN")
    protected boolean i18nEn;

    @Column(name = "I18N_FR")
    protected boolean i18nFr;

    @Column(name = "I18N_ES")
    protected boolean i18nEs;

    @Column(name = "I18N_TH")
    protected boolean i18nTh;

    @Column(name = "I18N_VT")
    protected boolean i18nVt;

    @Column(name = "I18N_LA")
    protected boolean i18nLa;

    @Column(name = "I18N_ID")
    protected boolean i18nId;

    @Column(name = "I18N_KH")
    protected boolean i18nKh;

    @Column(name = "IS_COMPANY")
    protected boolean isCompany;

    @Column(name = "VALUE_MEASURE")
    protected boolean valueMeasure;

    @Column(name = "VALUE_TEXT")
    protected boolean valueText;

    @Column(name = "VALUE_CODE")
    protected boolean valueCode;

    @Column(name = "VALUE_DATE")
    protected boolean valueDate;

    @Column(name = "VALUE_INDICATOR")
    protected boolean valueIndicator;

    @Column(name = "VALUE_QUANTITY")
    protected boolean valueQuantity;

    @Column(name = "CPC_CODE")
    protected boolean cpcCode;

    @Column(name = "HS_CODE")
    protected boolean hsCode;

    @Column(name = "ISO_3_CODE")
    protected boolean iso3Code;

    @Column(name = "SCIENTIFIC_NAME")
    protected boolean scientificName;

    @Column(name = "CL_ADMIN_LEVEL_1_ID")
    protected boolean clAdminLevel1Id;

    @Column(name = "CL_APP_CONSTRUCTION_LOCATION_TYPE")
    protected boolean clAppConstructionLocationType;

    @Column(name = "CL_COUNTRY_ID")
    protected boolean clCountryId;

    @Column(name = "CL_ENTITY_TYPE_ID")
    protected boolean clEntityTypeId;

    @Column(name = "CL_FARM_TYPE_ID")
    protected boolean clFarmTypeId;

    @Column(name = "CL_LANGUAGE_ID")
    protected boolean clLanguageId;

    @Column(name = "CL_PRODUCTS_TYPE_ID")
    protected boolean clProductsTypeId;

    @Column(name = "CL_QUANTITY_UNIT_TYPE_ID")
    protected boolean clQuantityUnitTypeId;

    @Column(name = "CL_RECOMMAND_UNIT_ID")
    protected boolean clRecommandUnitId;

    @Column(name = "CL_RECOMAND_QUANTITY_UNIT_ID")
    protected boolean clRecomandQuantityUnitId;

    @Column(name = "CL_REF_COUNTRY_ID")
    protected boolean clRefCountryId;

    @Column(name = "CL_REF_REGION_ID")
    protected boolean clRefRegionId;

    @Column(name = "CL_VALUE_MEASURE_UNIT_ID")
    protected boolean clValueMeasureUnitId;

    @Column(name = "CL_VALUE_QUANTITY_UNIT_ID")
    protected boolean clValueQuantityUnitId;

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public boolean isId() {
        return id;
    }

    public void setId(boolean id) {
        this.id = id;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public boolean isCode() {
        return code;
    }

    public void setCode(boolean code) {
        this.code = code;
    }

    public boolean isRanking() {
        return ranking;
    }

    public void setRanking(boolean ranking) {
        this.ranking = ranking;
    }

    public boolean isName() {
        return name;
    }

    public void setName(boolean name) {
        this.name = name;
    }

    public boolean isDescription() {
        return description;
    }

    public void setDescription(boolean description) {
        this.description = description;
    }

    public boolean isI18nDefault() {
        return i18nDefault;
    }

    public void setI18nDefault(boolean i18nDefault) {
        this.i18nDefault = i18nDefault;
    }

    public boolean isI18nEn() {
        return i18nEn;
    }

    public void setI18nEn(boolean i18nEn) {
        this.i18nEn = i18nEn;
    }

    public boolean isI18nFr() {
        return i18nFr;
    }

    public void setI18nFr(boolean i18nFr) {
        this.i18nFr = i18nFr;
    }

    public boolean isI18nEs() {
        return i18nEs;
    }

    public void setI18nEs(boolean i18nEs) {
        this.i18nEs = i18nEs;
    }

    public boolean isI18nTh() {
        return i18nTh;
    }

    public void setI18nTh(boolean i18nTh) {
        this.i18nTh = i18nTh;
    }

    public boolean isI18nVt() {
        return i18nVt;
    }

    public void setI18nVt(boolean i18nVt) {
        this.i18nVt = i18nVt;
    }

    public boolean isI18nLa() {
        return i18nLa;
    }

    public void setI18nLa(boolean i18nLa) {
        this.i18nLa = i18nLa;
    }

    public boolean isI18nId() {
        return i18nId;
    }

    public void setI18nId(boolean i18nId) {
        this.i18nId = i18nId;
    }

    public boolean isI18nKh() {
        return i18nKh;
    }

    public void setI18nKh(boolean i18nKh) {
        this.i18nKh = i18nKh;
    }

    public boolean isCompany() {
        return isCompany;
    }

    public void setCompany(boolean company) {
        isCompany = company;
    }

    public boolean isValueMeasure() {
        return valueMeasure;
    }

    public void setValueMeasure(boolean valueMeasure) {
        this.valueMeasure = valueMeasure;
    }

    public boolean isValueText() {
        return valueText;
    }

    public void setValueText(boolean valueText) {
        this.valueText = valueText;
    }

    public boolean isValueCode() {
        return valueCode;
    }

    public void setValueCode(boolean valueCode) {
        this.valueCode = valueCode;
    }

    public boolean isValueDate() {
        return valueDate;
    }

    public void setValueDate(boolean valueDate) {
        this.valueDate = valueDate;
    }

    public boolean isValueIndicator() {
        return valueIndicator;
    }

    public void setValueIndicator(boolean valueIndicator) {
        this.valueIndicator = valueIndicator;
    }

    public boolean isValueQuantity() {
        return valueQuantity;
    }

    public void setValueQuantity(boolean valueQuantity) {
        this.valueQuantity = valueQuantity;
    }

    public boolean isCpcCode() {
        return cpcCode;
    }

    public void setCpcCode(boolean cpcCode) {
        this.cpcCode = cpcCode;
    }

    public boolean isHsCode() {
        return hsCode;
    }

    public void setHsCode(boolean hsCode) {
        this.hsCode = hsCode;
    }

    public boolean isIso3Code() {
        return iso3Code;
    }

    public void setIso3Code(boolean iso3Code) {
        this.iso3Code = iso3Code;
    }

    public boolean isScientificName() {
        return scientificName;
    }

    public void setScientificName(boolean scientificName) {
        this.scientificName = scientificName;
    }

    public boolean isClAdminLevel1Id() {
        return clAdminLevel1Id;
    }

    public void setClAdminLevel1Id(boolean clAdminLevel1Id) {
        this.clAdminLevel1Id = clAdminLevel1Id;
    }

    public boolean isClAppConstructionLocationType() {
        return clAppConstructionLocationType;
    }

    public void setClAppConstructionLocationType(boolean clAppConstructionLocationType) {
        this.clAppConstructionLocationType = clAppConstructionLocationType;
    }

    public boolean isClCountryId() {
        return clCountryId;
    }

    public void setClCountryId(boolean clCountryId) {
        this.clCountryId = clCountryId;
    }

    public boolean isClEntityTypeId() {
        return clEntityTypeId;
    }

    public void setClEntityTypeId(boolean clEntityTypeId) {
        this.clEntityTypeId = clEntityTypeId;
    }

    public boolean isClFarmTypeId() {
        return clFarmTypeId;
    }

    public void setClFarmTypeId(boolean clFarmTypeId) {
        this.clFarmTypeId = clFarmTypeId;
    }

    public boolean isClLanguageId() {
        return clLanguageId;
    }

    public void setClLanguageId(boolean clLanguageId) {
        this.clLanguageId = clLanguageId;
    }

    public boolean isClProductsTypeId() {
        return clProductsTypeId;
    }

    public void setClProductsTypeId(boolean clProductsTypeId) {
        this.clProductsTypeId = clProductsTypeId;
    }

    public boolean isClQuantityUnitTypeId() {
        return clQuantityUnitTypeId;
    }

    public void setClQuantityUnitTypeId(boolean clQuantityUnitTypeId) {
        this.clQuantityUnitTypeId = clQuantityUnitTypeId;
    }

    public boolean isClRecommandUnitId() {
        return clRecommandUnitId;
    }

    public void setClRecommandUnitId(boolean clRecommandUnitId) {
        this.clRecommandUnitId = clRecommandUnitId;
    }

    public boolean isClRecomandQuantityUnitId() {
        return clRecomandQuantityUnitId;
    }

    public void setClRecomandQuantityUnitId(boolean clRecomandQuantityUnitId) {
        this.clRecomandQuantityUnitId = clRecomandQuantityUnitId;
    }

    public boolean isClRefCountryId() {
        return clRefCountryId;
    }

    public void setClRefCountryId(boolean clRefCountryId) {
        this.clRefCountryId = clRefCountryId;
    }

    public boolean isClRefRegionId() {
        return clRefRegionId;
    }

    public void setClRefRegionId(boolean clRefRegionId) {
        this.clRefRegionId = clRefRegionId;
    }

    public boolean isClValueMeasureUnitId() {
        return clValueMeasureUnitId;
    }

    public void setClValueMeasureUnitId(boolean clValueMeasureUnitId) {
        this.clValueMeasureUnitId = clValueMeasureUnitId;
    }

    public boolean isClValueQuantityUnitId() {
        return clValueQuantityUnitId;
    }

    public void setClValueQuantityUnitId(boolean clValueQuantityUnitId) {
        this.clValueQuantityUnitId = clValueQuantityUnitId;
    }
}