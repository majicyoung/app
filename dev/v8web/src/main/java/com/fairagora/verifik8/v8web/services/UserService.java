package com.fairagora.verifik8.v8web.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.lang3.SystemUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fairagora.verifik8.v8web.config.technical.auth.V8LoggedUser;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmDetailsRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;

@Service
public class UserService extends AbstractV8Service {

	@Autowired
	protected SYSUserRepository userRepository;
	@Autowired
	private RegEntityFarmDetailsRepository farmDetailsRepository;

	@Transactional
	public List<SYSUser> listUsers() {

		Set<SYSUser> l = new HashSet<>();

		V8LoggedUser loggedUser = getLoggedUser();
		SYSUser u = userRepository.findByEmail(loggedUser.getUsername());

		l.add(u);

		if (u.getRole() != null) {
			switch (u.getRole().getCode()) {
			case SYSRole.SADMIN:
				l.addAll(userRepository.findAll());
				break;

			case SYSRole.farm:
				break;

			case SYSRole.coop:
				List<RegEntityFarmDetails> farmDetails = farmDetailsRepository.findByCooperativeId(u.getCooperative().getId());
				for (RegEntityFarmDetails f : farmDetails) {
					if (f.getOwner() != null) {
						SYSUser su = userRepository.findOne(f.getOwner().getId());
						if (su != null)
							l.add(su);
					}
				}
				break;

			}
		}

		List<SYSUser> sysUsers = new ArrayList<>(l);
		Collections.sort(sysUsers, Comparator.comparing(SYSUser::getName));
		return sysUsers;
	}

}
