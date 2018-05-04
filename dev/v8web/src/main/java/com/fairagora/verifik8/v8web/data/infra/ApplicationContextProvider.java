package com.fairagora.verifik8.v8web.data.infra;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.security.core.context.SecurityContextHolder;

public class ApplicationContextProvider implements ApplicationContextAware {

	private static ApplicationContext ctx = null;

	public static ApplicationContext getApplicationContext() {
		return ctx;
	}

	public void setApplicationContext(ApplicationContext ctx) throws BeansException {
		ApplicationContextProvider.ctx = ctx;
	}


	private static SYSUser updaterName = null;

	public static SYSUser getUpdaterName() {

		if (updaterName == null){
			if (SecurityContextHolder.getContext().getAuthentication() == null)
				updaterName = ApplicationContextProvider.getApplicationContext().getBean(SYSUserRepository.class)
						.findOne(1l);
			else
				updaterName = ApplicationContextProvider.getApplicationContext().getBean(SYSUserRepository.class)
						.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
		}
		return updaterName;
	}

}
