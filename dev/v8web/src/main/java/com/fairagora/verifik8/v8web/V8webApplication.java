package com.fairagora.verifik8.v8web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
public class V8webApplication {

	public static void main(String[] args) {
		SpringApplication.run(V8webApplication.class, args);
	}
}
