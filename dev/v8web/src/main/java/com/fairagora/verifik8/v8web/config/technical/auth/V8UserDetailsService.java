package com.fairagora.verifik8.v8web.config.technical.auth;

import java.util.HashSet;

import com.fairagora.verifik8.v8web.services.FameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;

@Service
public class V8UserDetailsService implements UserDetailsService, ApplicationListener<AuthenticationSuccessEvent> {

    private static final String USERS_BY_NAME = "SELECT email,password,active FROM sys_users WHERE email=?";
    private static final String AUTORITIES_BY_USERNAME = "SELECT CONCAT('ROLE_',sys_roles.CODE) FROM sys_users LEFT JOIN sys_roles ON sys_roles.ID=SYS_ROLE_ID WHERE email=? or sys_users.phone_number=?";

    @Autowired
    private SYSUserRepository userRepository;

    @Autowired
    private JdbcTemplate jdbc;

    @Autowired
    private FameService fameService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        SYSUser u = null;

        if (userRepository.findByEmail(username.toLowerCase()) != null) {
            u = userRepository.findByEmail(username.toLowerCase());
        } else {
            if (userRepository.findByPhoneNumber(username.toLowerCase()) != null) {
                u = userRepository.findByPhoneNumber(username.toLowerCase());
            }
        }

        if (u == null) {
            throw new UsernameNotFoundException(username);
        }

        fameService.saveUserLogin(u);

        V8LoggedUser loggedUser = new V8LoggedUser(u);

        jdbc.queryForList(AUTORITIES_BY_USERNAME, new Object[]{username.toLowerCase(), username.toLowerCase()}, String.class)
                .forEach(s -> loggedUser.addAuthority(new SimpleGrantedAuthority(s.toUpperCase())));

        String sql = "";
        sql += "SELECT sys_rights.CODE, sys_rights.RANKING, sys_pages.CODE FROM sys_users_rights";
        sql += "	LEFT JOIN sys_rights ON sys_rights.ID=sys_users_rights.SYS_RIGHT_ID";
        sql += "	LEFT JOIN sys_pages ON sys_pages.ID=sys_users_rights.SYS_PAGE_ID";
        sql += "	LEFT JOIN sys_users ON sys_users.SYS_ROLE_ID=sys_users_rights.SYS_ROLE_ID";
        sql += "	WHERE sys_users.ID=" + u.getId();
        sql += "		AND sys_rights.CODE IS NOT NULL";
        sql += "		AND length(sys_rights.CODE) >0";
        sql += "		AND sys_pages.CODE IS NOT NULL";
        sql += "		AND length(sys_pages.CODE) >0";
        sql += "	ORDER BY sys_rights.RANKING DESC";

        SqlRowSet rs = jdbc.queryForRowSet(sql);
        HashSet<String> pageCodes = new HashSet<>();
        while (rs.next()) {
            String right = rs.getString(1);
            int ranking = rs.getInt(2);
            String page = rs.getString(3);

            // rights are ordered by ranking, and we don't want to override
            if (pageCodes.contains(page))
                continue;
            pageCodes.add(page);

            // save the plain data base value to get more details
            loggedUser.addAuthority(new SimpleGrantedAuthority(right + "_" + page));

            // compute Read and Write status on pages
            if ("A".equals(right) || "AF".equals(right))
                loggedUser.addAuthority(new SimpleGrantedAuthority("W_" + page));
            if (!"X".equalsIgnoreCase(right)) {
                loggedUser.addAuthority(new SimpleGrantedAuthority("R_" + page));
            }
        }

        return loggedUser;
    }

    @Override
    public void onApplicationEvent(AuthenticationSuccessEvent event) {
        if (event.getAuthentication() != null) {
            System.out.println("--- DEBUG -- USER LOGIN :" + event.getAuthentication().getName());
            event.getAuthentication().getAuthorities().forEach(a -> {
                System.out.println("\t" + a.getAuthority());
            });
            System.out.println(
                    "--- END USER LOGIN ------------------------------------------------------------------------");
        }
    }

}
