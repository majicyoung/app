package com.fairagora.verifik8.v8web.config.technical;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.fairagora.verifik8.v8web.config.functional.Verifik8AppConfig;
import com.fairagora.verifik8.v8web.data.infra.ApplicationContextProvider;

@Configuration
public class V8ConfigLoader {

	@Bean(name = "v8App")
	public Verifik8AppConfig v8App() {
		return new Verifik8AppConfig();
	}

	@Bean
	public ApplicationContextProvider applicationContextProvider() {
		return new ApplicationContextProvider();
	}
}
