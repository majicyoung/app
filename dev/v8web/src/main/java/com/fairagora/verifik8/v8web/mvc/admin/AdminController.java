package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.repo.cl.CLAppAdministrativeCharacteristicTypeRepository;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLColumnDto;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import com.fairagora.verifik8.v8web.services.CodeListsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

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

        List<CLColumnDto> clColumnDtos = codeListservice.getColumns();
        mv.addAttribute("allTables", clColumnDtos);

        return "admin/codelists/browser";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}", method = RequestMethod.GET)
    public String showCL(@PathVariable("table") String table, @RequestParam(value = "error", required = false) String error, Model mv) {

        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        CLColumnDto clColumnDto = codeListservice.getColumn(table);
        List<CLDto> clDtos = codeListservice.getCLs(table);

        mv.addAttribute("table", table);
        mv.addAttribute("column", clColumnDto);
        mv.addAttribute("datas", clDtos);
        mv.addAttribute("error", error);

        return "admin/codelists/listing";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/create.html", method = RequestMethod.GET)
    public String createCL(@PathVariable("table") String table, Model mv) {

        CLColumnDto clColumnDto = codeListservice.getColumn(table);

        prepareForCLEdition(table, clColumnDto, new CLDto(), mv);

        return "admin/codelists/create";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/create.html", method = RequestMethod.POST)
    public String createCL(@PathVariable("table") String table, @Validated @ModelAttribute("clDto") CLDto dto, BindingResult bindResults, Model mv) {
        try {
            if (table.equals("cl_ref_languages_countries")) {
                codeListservice.addCL(dto, null, null);
            } else {
                codeListservice.addCL(table, dto, null);
            }
            return "redirect:/admin/codelists/browser/" + table + "/";
        } catch (Exception e) {
            return "redirect:/admin/codelists/browser/" + table + "/?error=" + e.getCause().getCause().getMessage();
        }
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/update.html", method = RequestMethod.POST)
    public String updateCL(@PathVariable("table") String table, @Validated @ModelAttribute("clDto") CLDto dto, @PathVariable("id") Long id, BindingResult bindResults, Model mv) {
        try {
            codeListservice.addCL(table, dto, id);
            return "redirect:/admin/codelists/browser/" + table + "/";
        } catch (Exception e) {
            return "redirect:/admin/codelists/browser/" + table + "/?error=" + e.getCause().getCause().getMessage();
        }
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{languageId}/{countryId}/update.html", method = RequestMethod.POST)
    public String updateCL(@PathVariable("table") String table, @Validated @ModelAttribute("clDto") CLDto dto, @PathVariable("languageId") Long languageId, @PathVariable("countryId") Long countryId, BindingResult bindResults, Model mv) {
        try {
            codeListservice.addCL(dto, languageId, countryId);
            return "redirect:/admin/codelists/browser/" + table + "/";
        } catch (Exception e) {
            return "redirect:/admin/codelists/browser/" + table + "/?error=" + e.getCause().getCause().getMessage();
        }
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/delete.html", method = RequestMethod.POST)
    public String deleteCL(@PathVariable("table") String table, @PathVariable("id") Long id, Model mv) {
        codeListservice.deleteCL(table, id);
        return "redirect:/admin/codelists/browser/" + table + "/";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/edit.html", method = RequestMethod.GET)
    public String editCL(@PathVariable("table") String table, @PathVariable("id") Long id, Model mv) {

        // Get all column names
        CLColumnDto clColumnDto = codeListservice.getColumn(table);

        // Get data
        CLDto clDto = codeListservice.getCL(table, id);
        prepareForCLEdition(table, clColumnDto, clDto, mv);

        return "admin/codelists/create";
    }

    /***** For cl_ref_languages_countries table only *****/
    @RequestMapping(value = "/admin/codelists/browser/{table}/{languageId}/{countryId}/edit.html", method = RequestMethod.GET)
    public String editCL(@PathVariable("table") String table, @PathVariable("languageId") Long languageId, @PathVariable("countryId") Long countryId, Model mv) {

        // Get all column names
        CLColumnDto clColumnDto = codeListservice.getColumn(table);

        // Get data
        CLDto clDto = codeListservice.getCL(languageId, countryId);
        prepareForCLEdition(table, clColumnDto, clDto, mv);

        return "admin/codelists/create";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{languageId}/{countryId}/delete.html", method = RequestMethod.POST)
    public String deleteCL(@PathVariable("table") String table, @PathVariable("languageId") Long languageId, @PathVariable("countryId") Long countryId, Model mv) {
        codeListservice.deleteCL(languageId, countryId);
        return "redirect:/admin/codelists/browser/" + table + "/";
    }

    private void prepareForCLEdition(String table, CLColumnDto clColumnDto, CLDto clDto, Model mv) {
        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        mv.addAttribute("table", table);
        mv.addAttribute("tableCLRefLanguagesCountries", table.equals("cl_ref_languages_countries"));
        mv.addAttribute("newEntity", table.equals("cl_ref_languages_countries") ? (clDto.getClLanguageId() == null && clDto.getClCountryId() == null) : clDto.getId() == null);
        mv.addAttribute("clColumnDto", clColumnDto);
        mv.addAttribute("clDto", clDto);
    }

}