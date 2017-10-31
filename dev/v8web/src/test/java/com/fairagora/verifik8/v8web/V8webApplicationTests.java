package com.fairagora.verifik8.v8web;

import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.fairagora.verifik8.v8web.data.domain.cl.CLCountry;
import com.fairagora.verifik8.v8web.data.domain.cl.CLHvHeExpensionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLProductType;
import com.fairagora.verifik8.v8web.data.domain.cl.CLQuantityUnit;
import com.fairagora.verifik8.v8web.services.CodeListsService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class V8webApplicationTests {

	@Test
	public void contextLoads() {
		System.out.println(codeListService.listActiveCountries().size());

		System.out.println("----- COUNTRIES----");
		for (CLCountry c : codeListService.listActiveCountries()) {
			System.out.println(c.getCode() + "\t" + c.getName());
		}

		System.out.println("----- PRODUCT TYPES ----");

		for (CLProductType pt : codeListService.listActiveProductTypes()) {
			System.out.println(pt.getCode() + "\t" + pt.getName() + "\t"
					+ Optional.ofNullable(pt.getParent()).map(p -> p.getName()).orElse("-"));
		}

		System.out.println("----- QUANTITY UNITS ---- ");

		for (CLQuantityUnit qu : codeListService.listActiveQuantityUnit()) {
			System.out.println(qu.getCode() + "\t" + qu.getName() + "\t"
					+ Optional.ofNullable(qu.getType()).map(p -> p.getName()).orElse("-"));
		}
		System.out.println("----- HVHE ExpType ---- ");

		for (CLHvHeExpensionType t : codeListService.listHvHeExpensionTypes()) {
			System.out.println(t.getCode() + "\t" + t.getName() + "\t"
					+ Optional.ofNullable(t.getCountry()).map(p -> p.getName()).orElse("-"));
		}
	}

	@Autowired
	private CodeListsService codeListService;

}
