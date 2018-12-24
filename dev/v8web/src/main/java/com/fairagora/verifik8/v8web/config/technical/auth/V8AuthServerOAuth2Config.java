package com.fairagora.verifik8.v8web.config.technical.auth;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.InMemoryTokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;

@Configuration
@EnableAuthorizationServer
public class V8AuthServerOAuth2Config extends AuthorizationServerConfigurerAdapter {
	
	@Value("${v8app.url}")
	private String v8apiUrl;
	@Value("${oauth.clientId}")
	private String clientId;
	@Value("${oauth.clientSecret}")
	private String clientSecret;
	@Value("${oauth.grantTypePassword}")
	private String grantTypePassword = "password";
	@Value("${oauth.authorizationCode}")
	private String authorizationCode = "authorization_code";
	@Value("${oauth.refreshToken}")
	private String refreshToken = "refresh_token";

	static final String IMPLICIT = "implicit";
	static final String SCOPE_READ = "read";
	static final String SCOPE_WRITE = "write";
	static final String TRUST = "trust";

	@Autowired
	private DataSource dataSource;
	    
	@Bean
	public TokenStore tokenStore() {
		return new JdbcTokenStore(dataSource);
	}

	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Override
	public void configure(AuthorizationServerSecurityConfigurer oauthServer) throws Exception {
		oauthServer.checkTokenAccess("permitAll()");
	}
	
	@Override
	public void configure(ClientDetailsServiceConfigurer configurer) throws Exception {
		configurer.inMemory().withClient(clientId).secret(clientSecret)
				.authorizedGrantTypes(grantTypePassword, authorizationCode, refreshToken, IMPLICIT)
				.scopes(SCOPE_READ, SCOPE_WRITE, TRUST)
				.accessTokenValiditySeconds(Integer.MAX_VALUE)
				.refreshTokenValiditySeconds(Integer.MAX_VALUE);
	}
	
	@Override
	public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
		endpoints.tokenStore(tokenStore()).authenticationManager(authenticationManager);
		
		endpoints.pathMapping("/oauth/token", "/"+v8apiUrl+"/oauth/token");
	}
}