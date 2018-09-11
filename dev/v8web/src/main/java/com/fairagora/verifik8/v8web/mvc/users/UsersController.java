package com.fairagora.verifik8.v8web.mvc.users;

import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.fairagora.verifik8.v8web.config.technical.auth.V8LoggedUser;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSPasswordResetToken;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSPasswordResetTokenRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.data.domain.cl.CLAppEntityType;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSUser;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;
import com.fairagora.verifik8.v8web.mvc.infra.dtomapping.SysUserDTOMapper;
import com.fairagora.verifik8.v8web.mvc.users.dto.UserFormDto;
import com.fairagora.verifik8.v8web.services.UserService;

@Controller
public class UsersController extends AbstractV8Controller {

    @Autowired
    private UserService userService;

    @Autowired
    private SYSUserRepository userRepository;

    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    @Qualifier("encoder")
    private PasswordEncoder passwordEncoder;

    @Autowired
    private SYSPasswordResetTokenRepository sysPasswordResetTokenRepository;

    @Autowired
    private SysUserDTOMapper sysUserDTOMapper;

    @PreAuthorize("hasAuthority('R_USERBROWSER')")
    @RequestMapping(value = "/users.html", method = RequestMethod.GET)
    public String showUsersList(Model mv, HttpServletRequest req) {

        V8Page p = new V8Page();
        p.setTitle("default.users");
        p.setDescription("default.user_page_description");
        p.setNavBarPrefix("/users");
        mv.addAttribute("v8p", p);

        List<SYSUser> users = userService.listUsers();
        mv.addAttribute("users", users);

        return "users/listing";

    }

    @PreAuthorize("hasAuthority('W_USEREDITOR')")
    @RequestMapping(value = "/user/{id}/delete.html", method = RequestMethod.POST)
    public String deleteUser(@PathVariable("id") Long id, Model mv) {
        userRepository.delete(id);
        return "redirect:/users.html";
    }

    @PreAuthorize("hasAuthority('R_USEREDITOR')")
    @RequestMapping(value = "/user/{id}/edit.html", method = RequestMethod.GET)
    public String showEditUser(@PathVariable("id") Long id, Model mv) {
        UserFormDto dto = new UserFormDto();

        sysUserDTOMapper.toDto(userRepository.findOne(id), dto);
        setToReadOnly(mv, "W_USEREDITOR");
        prepareForUserEdition(dto, mv);
        return "users/create";
    }

    @PreAuthorize("hasAuthority('W_USEREDITOR')")
    @RequestMapping(value = "/users/create.html", method = RequestMethod.GET)
    public String showCreateUserForm(Model mv) {

        UserFormDto dto = new UserFormDto();

        prepareForUserEdition(dto, mv);

        return "users/create";

    }

    @RequestMapping(value = "/resetpassword", method = RequestMethod.POST)
    public String resetPassword(@RequestParam("password") final String password) {

        SYSUser user = userService.getUserByEmail();
        user.setPassword(passwordEncoder.encode(password));

        userService.saveRegisteredUser(user);
        return "redirect:/login";
    }

    @RequestMapping(value = "/forgotpassword", method = RequestMethod.GET)
    public String showForgetPasswordForm(Model mv) {
        return "forgot-password";
    }

    @RequestMapping(value = "/forgotpassword", method = RequestMethod.POST)
    @ResponseBody
    public String forgetPassword(final HttpServletRequest request, @RequestParam("email") final String email) {
        final SYSUser user = userRepository.findByEmail(email);
        if (user != null) {
            final String token = UUID.randomUUID().toString();
            userService.createPasswordResetTokenForUser(user, token);
            // mailSender.send(constructResetTokenEmail(getAppUrl(request), request.getLocale(), token, user));
        }

        // return new GenericResponse(messages.getMessage("message.resetPasswordEmail", null, request.getLocale()));
        return "";
    }

    @RequestMapping(value = "/resetpassword", method = RequestMethod.GET)
    public String showResetPasswordForm(Model mv, @RequestParam("id") final long id, @RequestParam("token") final String token) {
        final SYSPasswordResetToken passToken = sysPasswordResetTokenRepository.findByToken(token);
        final SYSUser user = passToken.getSysUser();
        if ((passToken == null) || (user.getId() != id)) {
            return "redirect:/login";
        }

        final Calendar cal = Calendar.getInstance();
        if ((passToken.getExpiryDate().getTime() - cal.getTime().getTime()) <= 0) {
            return "redirect:/login";
        }

        final Authentication auth = new UsernamePasswordAuthenticationToken(new V8LoggedUser(user), null, userDetailsService.loadUserByUsername(user.getEmail()).getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(auth);

        return "reset-password";
    }

    private void prepareForUserEdition(UserFormDto dto, Model mv) {
        V8Page p = new V8Page();
        p.setTitle("default.users");
        p.setDescription("default.user_page_description");
        p.setNavBarPrefix("/users");
        mv.addAttribute("v8p", p);

        mv.addAttribute("newEntity", dto.getId() == null);

        mv.addAttribute("userDto", dto);
        mv.addAttribute("allCountries", countryRepository.findAll(new Sort("name")));
        mv.addAttribute("allCooperatives", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COOP));
        mv.addAttribute("allFarms", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_FARM));
        mv.addAttribute("allSuppliers", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COM));
        mv.addAttribute("allBuyers", regEntityRepository.findByEntityTypeCode(CLAppEntityType.CODE_COM));
    }

    @PreAuthorize("hasAuthority('W_USEREDITOR')")
    @RequestMapping(value = "/users/create.html", method = RequestMethod.POST)
    public String createUser(@Validated @ModelAttribute("userDto") UserFormDto createUserDto, BindingResult bindResults, Model mv) {

        SYSUser newUser = new SYSUser();

        sysUserDTOMapper.fillEntity(createUserDto, newUser);
        newUser.setActive(true);

        userRepository.save(newUser);

        return "redirect:/users.html";
    }

    @PreAuthorize("hasAuthority('W_USEREDITOR')")
    @RequestMapping(value = "/user/{id}/update.html", method = RequestMethod.POST)
    public String createUser(@Validated @ModelAttribute("userDto") UserFormDto createUserDto, @PathVariable("id") Long userId, BindingResult bindResults, Model mv) {

        SYSUser newUser = userRepository.findOne(userId);

        sysUserDTOMapper.fillEntity(createUserDto, newUser);

        userRepository.save(newUser);

        return "redirect:/users.html";
    }

}
