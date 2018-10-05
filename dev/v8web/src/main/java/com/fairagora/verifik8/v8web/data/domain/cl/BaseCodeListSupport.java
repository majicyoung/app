package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;

import javax.persistence.*;

@MappedSuperclass
public abstract class BaseCodeListSupport extends V8EntitySupport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    protected Long id;

}