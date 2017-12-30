package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;

public interface CLRefProductRepository extends CodeListRepository<CLRefProduct> {

	List<CLRefProduct> findByEnabledTrueOrderByName();

}
