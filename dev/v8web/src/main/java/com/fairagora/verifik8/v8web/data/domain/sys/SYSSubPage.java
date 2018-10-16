package com.fairagora.verifik8.v8web.data.domain.sys;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCountry;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;

import javax.persistence.*;

@Entity
@Table(name = "sys_sub_pages")
public class SYSSubPage extends V8Base implements V8Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    protected Long id;

    @Column(name = "ENABLED")
    protected boolean enabled;

    @Column(name = "CODE", unique = true, length = 2, nullable = false)
    protected String code;

    @Column(name = "RANKING", length = 6, nullable = false)
    protected Long ranking;

    @Column(name = "NAME", length = 64, nullable = false)
    protected String name;

    @JoinColumn(name = "SYS_PAGE_ID")
    @ManyToOne(optional = true)
    protected SYSPage sysPage;

    @Column(name = "DESCRIPTION", length = 128, nullable = false)
    protected String description;

    @Column(name = "I18N_DEFAULT", length = 256, nullable = false)
    protected String i18nDefault;

    @Column(name = "I18N_EN", length = 256, nullable = false)
    protected String i18nEn;

    @Column(name = "I18N_FR", length = 256, nullable = false)
    protected String i18nFr;

    @Column(name = "I18N_ES", length = 256, nullable = false)
    protected String i18nEs;

    @Column(name = "I18N_TH", length = 256, nullable = false)
    protected String i18nTh;

    @Column(name = "I18N_VT", length = 256, nullable = false)
    protected String i18nVt;

    @Column(name = "I18N_LA", length = 256, nullable = false)
    protected String i18nLa;

    @Column(name = "I18N_ID", length = 256, nullable = false)
    protected String i18nId;

    @Column(name = "I18N_KH", length = 256, nullable = false)
    protected String i18nKh;

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String getName() {
        return name;
    }

}