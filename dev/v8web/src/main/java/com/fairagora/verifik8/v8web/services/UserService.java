package com.fairagora.verifik8.v8web.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSPasswordResetToken;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSVerificationToken;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSPasswordResetTokenRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSVerificationTokenRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fairagora.verifik8.v8web.config.technical.auth.V8LoggedUser;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFarmDetails;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityFarmDetailsRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;

@Service
@Transactional
public class UserService extends AbstractV8Service {

	@Autowired
	protected SYSUserRepository userRepository;
	@Autowired
	private RegEntityFarmDetailsRepository farmDetailsRepository;
	@Autowired
	@Qualifier("encoder")
	private PasswordEncoder passwordEncoder;
	@Autowired
	private SYSVerificationTokenRepository sysVerificationTokenRepository;
	@Autowired
	private SYSPasswordResetTokenRepository sysPasswordResetTokenRepository;

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
	
	@Transactional
	public SYSUser getUserByEmail() {
		V8LoggedUser loggedUser = getLoggedUser();
		SYSUser user = userRepository.findByEmail(loggedUser.getUsername());
		
		return user;
	}



	public SYSUser registerNewUserAccount(final SYSUser sysUser) {
		if (emailExist(sysUser.getEmail())) {
		//	throw new UserAlreadyExistException("There is an account with that email adress: " + accountDto.getEmail());
		}
		sysUser.setPassword(passwordEncoder.encode(sysUser.getPassword()));
		return userRepository.save(sysUser);
	}

	public SYSUser getUser(final String verificationToken) {
		final SYSVerificationToken token = sysVerificationTokenRepository.findByToken(verificationToken);
		if (token != null) {
			return token.getSysUser();
		}
		return null;
	}

	public SYSVerificationToken getSysVerificationToken(final String VerificationToken) {
		return sysVerificationTokenRepository.findByToken(VerificationToken);
	}

	public void saveRegisteredUser(final SYSUser sysUser) {
		userRepository.save(sysUser);
	}

	public void deleteUser(final SYSUser sysUser) {
		final SYSVerificationToken verificationToken = sysVerificationTokenRepository.findBySysUser(sysUser);

		if (verificationToken != null) {
			sysVerificationTokenRepository.delete(verificationToken);
		}

		final SYSPasswordResetToken sysPasswordToken = sysPasswordResetTokenRepository.findBySysUser(sysUser);

		if (sysPasswordToken != null) {
			sysPasswordResetTokenRepository.delete(sysPasswordToken);
		}

		userRepository.delete(sysUser);
	}


	private boolean emailExist(final String email) {
		return userRepository.findByEmail(email) != null;
	}



}
