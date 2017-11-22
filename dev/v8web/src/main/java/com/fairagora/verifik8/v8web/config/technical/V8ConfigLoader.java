package com.fairagora.verifik8.v8web.config.technical;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.fairagora.verifik8.v8web.config.functional.Verifik8AppConfig;
import com.fairagora.verifik8.v8web.data.infra.ApplicationContextProvider;

@Configuration
public class V8ConfigLoader {

	@Value("${v8app.pondProfile}")
	private boolean pondProfile;

	@Value("${v8app.plotProfile}")
	private boolean plotProfile;

	@Bean(name = "v8App")
	public Verifik8AppConfig v8App() {
		Verifik8AppConfig appConfig = new Verifik8AppConfig();
		appConfig.setPlotProfile(plotProfile);
		appConfig.setPondProfile(pondProfile);
		return appConfig;
	}

	@Bean
	public ApplicationContextProvider applicationContextProvider() {
		return new ApplicationContextProvider();
	}
}
