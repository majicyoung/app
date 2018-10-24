package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefLanguageCountry;
import com.fairagora.verifik8.v8web.data.domain.cl.LanguageCountryKey;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CLRefLanguageCountryRepository extends JpaRepository<CLRefLanguageCountry, LanguageCountryKey> {

    List<CLRefLanguageCountry> findByEnabledTrueOrderByName();

}
