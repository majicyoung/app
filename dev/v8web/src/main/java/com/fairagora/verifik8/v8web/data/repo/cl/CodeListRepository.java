package com.fairagora.verifik8.v8web.data.repo.cl;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fairagora.verifik8.v8web.data.domain.cl.CodeListSupport;

public interface CodeListRepository<T extends CodeListSupport> extends JpaRepository<T, Long> {


}
