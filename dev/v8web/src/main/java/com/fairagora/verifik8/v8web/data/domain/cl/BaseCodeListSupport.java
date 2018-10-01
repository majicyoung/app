package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class BaseCodeListSupport extends V8EntitySupport {

    @Id
    @Column(name = "ID")
    protected Long id;

}