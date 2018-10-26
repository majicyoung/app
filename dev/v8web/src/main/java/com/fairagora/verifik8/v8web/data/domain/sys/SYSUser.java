package com.fairagora.verifik8.v8web.data.domain.sys;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefCountry;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;

@Entity
@Table(name = "sys_users")
public class SYSUser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    protected Long id;

    protected String name;
    protected String email;
    protected String password;
    protected String cacheVersion;

    protected boolean active;

    @Column(name = "phone_number")
    protected String phoneNumber;

    @ManyToOne
    @JoinColumn(name = "SYS_ROLE_ID")
    protected SYSRole role;

    /**
     * country is used in case the user is a country manager
     */
    @ManyToOne
    @JoinColumn(name = "CL_COUNTRY_ID")
    protected CLRefCountry country;

    @ManyToOne
    @JoinColumn(name = "REG_ENTITY_FARM_ID")
    protected RegEntity farm;

    @ManyToOne
    @JoinColumn(name = "REG_ENTITY_COOP_ID")
    protected RegEntity cooperative;

    @ManyToOne
    @JoinColumn(name = "REG_ENTITY_SUPPLIER_ID")
    protected RegEntity supplier;

    @ManyToOne
    @JoinColumn(name = "REG_ENTITY_BUYER_ID")
    protected RegEntity buyer;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getCacheVersion() {
		return cacheVersion;
	}

	public void setCacheVersion(String cacheVersion) {
		this.cacheVersion = cacheVersion;
	}

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public SYSRole getRole() {
        return role;
    }

    public void setRole(SYSRole role) {
        this.role = role;
    }

    public CLRefCountry getCountry() {
        return country;
    }

    public void setCountry(CLRefCountry country) {
        this.country = country;
    }

    public RegEntity getFarm() {
        return farm;
    }

    public void setFarm(RegEntity farm) {
        this.farm = farm;
    }

    public RegEntity getCooperative() {
        return cooperative;
    }

    public void setCooperative(RegEntity cooperative) {
        this.cooperative = cooperative;
    }

    public RegEntity getSupplier() {
        return supplier;
    }

    public void setSupplier(RegEntity supplier) {
        this.supplier = supplier;
    }

    public RegEntity getBuyer() {
        return buyer;
    }

    public void setBuyer(RegEntity buyer) {
        this.buyer = buyer;
    }
}
