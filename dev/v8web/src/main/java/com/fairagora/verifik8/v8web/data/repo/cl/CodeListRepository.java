package com.fairagora.verifik8.v8web.data.repo.cl;

import com.fairagora.verifik8.v8web.data.domain.cl.BaseCodeListSupport;
import com.fairagora.verifik8.v8web.data.domain.cl.CodeListSupport;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CodeListRepository<T extends BaseCodeListSupport> extends JpaRepository<T, Long> {
}