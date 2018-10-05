package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.domain.cl.*;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSRole;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppAdministrativeCharacteristicTypeRepository;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLColumnDto;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import com.fairagora.verifik8.v8web.mvc.users.dto.RoleFormDto;
import com.fairagora.verifik8.v8web.services.CodeListsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fairagora.verifik8.v8web.data.application.V8Page;
import com.fairagora.verifik8.v8web.mvc.AbstractV8Controller;

import java.util.List;

@Controller
public class AdminController extends AbstractV8Controller {

    @Autowired
    protected JdbcTemplate jdbc;

    @Autowired
    protected CodeListsService codeListservice;

    @Autowired
    protected CLColumnDTOMapper clColumnDTOMapper;

    @Autowired
    protected CLDTOMapper cldtoMapper;

    @Autowired
    protected CLAppAdministrativeCharacteristicTypeRepository clAppAdministrativeCharacteristicTypeRepository;

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

    @RequestMapping(value = "/admin/codelists/browser/{table}", method = RequestMethod.GET)
    public String showCL(@PathVariable("table") String table, Model mv) {

        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        CLColumn column = codeListservice.getColumn(table);
        List<? extends BaseCodeListSupport> datas = codeListservice.gets(table);

        CLColumnDto dto = new CLColumnDto();
        clColumnDTOMapper.toDto(column, dto);

        mv.addAttribute("table", table);
        mv.addAttribute("column", dto);
        mv.addAttribute("datas", datas);

        return "admin/codelists/listing";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/create.html", method = RequestMethod.GET)
    public String createCL(@PathVariable("table") String table, Model mv) {

        CLColumn column = codeListservice.getColumn(table);
        CLColumnDto clColumnDto = new CLColumnDto();
        clColumnDTOMapper.toDto(column, clColumnDto);

        prepareForCLEdition(table, clColumnDto, new CLDto(), mv);

        return "admin/codelists/create";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/create.html", method = RequestMethod.POST)
    public String createCL(@PathVariable("table") String table, @Validated @ModelAttribute("clDto") CLDto dto, BindingResult bindResults, Model mv) {
        switch (table) {
            case "cl_app_administrative_characteristic_types":
                CLAppAdministrativeCharacteristicType newCLData = new CLAppAdministrativeCharacteristicType();
                cldtoMapper.fillEntity(dto, newCLData);
                clAppAdministrativeCharacteristicTypeRepository.save(newCLData);
                break;
        }

        return "redirect:/admin/codelists/browser/" + table + "/";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/update.html", method = RequestMethod.POST)
    public String updateCL(@PathVariable("table") String table, @Validated @ModelAttribute("clDto") CLDto dto, @PathVariable("id") Long id, BindingResult bindResults, Model mv) {

        switch (table) {
            case "cl_app_administrative_characteristic_types":
                CLAppAdministrativeCharacteristicType newCLData = clAppAdministrativeCharacteristicTypeRepository.findOne(id);
                cldtoMapper.fillEntity(dto, newCLData);
                clAppAdministrativeCharacteristicTypeRepository.save(newCLData);
                break;
        }

        return "redirect:/admin/codelists/browser/" + table + "/";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/delete.html", method = RequestMethod.POST)
    public String deleteCL(@PathVariable("table") String table, @PathVariable("id") Long id, Model mv) {

        switch (table) {
            case "cl_app_administrative_characteristic_types":
                clAppAdministrativeCharacteristicTypeRepository.delete(id);
                break;
        }

        return "redirect:/admin/codelists/browser/" + table + "/";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/edit.html", method = RequestMethod.GET)
    public String editCL(@PathVariable("table") String table, @PathVariable("id") Long id, Model mv) {

        // Get all column names
        CLColumn column = codeListservice.getColumn(table);
        CLColumnDto clColumnDto = new CLColumnDto();
        clColumnDTOMapper.toDto(column, clColumnDto);

        // Get all datas
        BaseCodeListSupport v8Base = codeListservice.gets(table, id);
        CodeListSupport codeListSupport = (CodeListSupport) v8Base;
        CLDto clDto = new CLDto();
        cldtoMapper.toDto(codeListSupport, clDto);

        prepareForCLEdition(table, clColumnDto, clDto, mv);

        return "admin/codelists/create";
    }

    private void prepareForCLEdition(String table, CLColumnDto clColumnDto, CLDto clDto, Model mv) {
        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        mv.addAttribute("newEntity", clDto.getId() == null);
        mv.addAttribute("table", table);
        mv.addAttribute("clColumnDto", clColumnDto);
        mv.addAttribute("clDto", clDto);

    }
}