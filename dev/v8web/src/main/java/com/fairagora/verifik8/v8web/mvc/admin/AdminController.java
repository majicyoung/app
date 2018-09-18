package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.domain.cl.CLAppCompanyPositionType;
import com.fairagora.verifik8.v8web.data.domain.cl.CodeListSupport;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import com.fairagora.verifik8.v8web.mvc.users.dto.UserFormDto;
import com.fairagora.verifik8.v8web.services.CodeListsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class AdminController extends AbstractV8Controller {

    @Autowired
    protected JdbcTemplate jdbc;

    @Autowired
    protected CodeListsService codeListservice;

    @RequestMapping(value = "/admin/admin.html", method = RequestMethod.GET)
    public String adminPage(Model mv) {

        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        return "admin/admin";
    }


    @RequestMapping(value = "/admin/codelists/browser.html", method = RequestMethod.GET)
    public String CLPage(Model mv) {

        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        mv.addAttribute("allTables", jdbc.queryForList("SELECT table_name FROM information_schema.tables WHERE table_name LIKE \"cl_%\"", String.class));

        return "admin/codelists/browser";
    }

    @RequestMapping(value = "/admin/codelists/browser/{name}", method = RequestMethod.GET)
    public String showCL(@PathVariable("name") String name, Model mv) {

        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        mv.addAttribute("table", name);

        mv.addAttribute("allDatas", jdbc.queryForList("SELECT * FROM " + name));

        return "admin/codelists/listing";
    }

    @RequestMapping(value = "/admin/codelists/browser/{name}/create.html", method = RequestMethod.GET)
    public String createCL(@PathVariable("name") String name, Model mv) {

        CLDto clDto = new CLDto();

        prepareForCLEdition(clDto, mv);

        return "admin/codelists/create";
    }

    @RequestMapping(value = "/admin/codelists/browser/{name}/{id}/edit.html", method = RequestMethod.GET)
    public String editCL(@PathVariable("name") String name, @PathVariable("id") Long id, Model mv) {

        CodeListSupport codeListSupport = codeListservice.get(name, id);


//        Map<String, Object> data = jdbc.queryForMap("SELECT * FROM " + name + " WHERE id = " + id);
//
//        CLDto clDto = new CLDto();
//
//
//        for (int i = 0; i < list.size(); i++) {
//            CLAppCompanyPositionType type = (CLAppCompanyPositionType) list.get(i);
//        }
//
//        if (data.get("id") != null) clDto.setId(((Integer) data.get("id")).longValue());
//        if (data.get("enabled") != null) clDto.setEnabled((Boolean) data.get("enabled"));
//        if (data.get("code") != null) clDto.setCode(String.valueOf(data.get("code")));
//        if (data.get("ranking") != null) clDto.setRanking(((Integer) data.get("ranking")).longValue());
//        if (data.get("name") != null) clDto.setName(String.valueOf(data.get("name")));
//        if (data.get("description") != null) clDto.setName(String.valueOf(data.get("description")));
//        if (data.get("i18n_default") != null) clDto.setI18nDefault(String.valueOf(data.get("i18n_default")));
//        if (data.get("i18n_en") != null) clDto.setI18nEn(String.valueOf(data.get("i18n_en")));
//        if (data.get("i18n_fr") != null) clDto.setI18nFr(String.valueOf(data.get("i18n_fr")));
//        if (data.get("i18n_es") != null) clDto.setI18nEs(String.valueOf(data.get("i18n_es")));
//        if (data.get("i18n_th") != null) clDto.setI18nTh(String.valueOf(data.get("i18n_th")));
//        if (data.get("i18n_vt") != null) clDto.setI18nVt(String.valueOf(data.get("i18n_vt")));
//        if (data.get("i18n_la") != null) clDto.setI18nLa(String.valueOf(data.get("i18n_la")));
//        if (data.get("i18n_id") != null) clDto.setI18nId(String.valueOf(data.get("i18n_id")));
//        if (data.get("i18n_kh") != null) clDto.setI18nKh(String.valueOf(data.get("i18n_kh")));

        prepareForCLEdition(new CLDto(), mv);

        return "admin/codelists/create";
    }

    private void prepareForCLEdition(CLDto clDto, Model mv) {
        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        mv.addAttribute("newEntity", clDto.getId() == null);
        mv.addAttribute("clDto", clDto);
    }
}