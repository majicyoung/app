package com.fairagora.verifik8.v8web.data.repo.cl;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppPaymentFrequency;

import java.util.List;

public interface CLAppPaymentFrequencyRepository extends CodeListRepository<CLAppPaymentFrequency> {
    List<CLAppPaymentFrequency> findByEnabledTrueOrderByName();
}
