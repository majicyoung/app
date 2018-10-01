package com.fairagora.verifik8.v8web.data.repo.cl;

import com.fairagora.verifik8.v8web.data.domain.cl.CodeListSupport;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CodeListRepository<T extends CodeListSupport> extends JpaRepository<T, Long> {
}