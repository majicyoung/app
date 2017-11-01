package com.fairagora.verifik8.v8web.data.repo.cl;

import java.util.List;

import com.fairagora.verifik8.v8web.data.domain.cl.CLProduct;

public interface CLProductRepository extends CodeListRepository<CLProduct> {

	List<CLProduct> findByEnabledTrueOrderByName();

}
