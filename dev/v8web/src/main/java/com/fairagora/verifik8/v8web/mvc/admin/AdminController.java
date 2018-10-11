package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.domain.cl.*;
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

import java.util.ArrayList;
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
    public String showCL(@PathVariable("table") String table, @RequestParam(value = "error", required = false) String error, Model mv) {

        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        CLColumn column = codeListservice.getColumn(table);
        CLColumnDto clColumnDto = new CLColumnDto();
        clColumnDTOMapper.toDto(column, clColumnDto);

        List<? extends BaseCodeListSupport> datas = codeListservice.gets(table);
        List<CLDto> clDtos = new ArrayList<>();
        for (BaseCodeListSupport baseCodeListSupport : datas) {
            CLDto clDto = mapping(baseCodeListSupport);
            clDtos.add(clDto);
        }

        mv.addAttribute("table", table);
        mv.addAttribute("column", clColumnDto);
        mv.addAttribute("datas", clDtos);
        mv.addAttribute("error", error);

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
        try {
            codeListservice.addCL(table, dto, null);
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

    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/delete.html", method = RequestMethod.POST)
    public String deleteCL(@PathVariable("table") String table, @PathVariable("id") Long id, Model mv) {
        codeListservice.deleteCL(table, id);
        return "redirect:/admin/codelists/browser/" + table + "/";
    }

    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/edit.html", method = RequestMethod.GET)
    public String editCL(@PathVariable("table") String table, @PathVariable("id") Long id, Model mv) {

        // Get all column names
        CLColumn column = codeListservice.getColumn(table);
        CLColumnDto clColumnDto = new CLColumnDto();
        clColumnDTOMapper.toDto(column, clColumnDto);

        // Get all datas
        BaseCodeListSupport baseCodeListSupport = codeListservice.get(table, id);
        CLDto clDto = mapping(baseCodeListSupport);

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

    private CLDto mapping(BaseCodeListSupport baseCodeListSupport) {
        CLDto clDto = new CLDto();

        if (baseCodeListSupport instanceof CLAppEntityType) {
            cldtoMapper.toDto((CLAppEntityType) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLAppHazardousWorkType) {
            cldtoMapper.toDto((CLAppHazardousWorkType) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLAppHiringRestrictionType) {
            cldtoMapper.toDto((CLAppHiringRestrictionType) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLAppLegalStatus) {
            cldtoMapper.toDto((CLAppLegalStatus) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLAppLocation) {
            cldtoMapper.toDto((CLAppLocation) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLAppHvHeExpensionType) {
            cldtoMapper.toDto((CLAppHvHeExpensionType) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLAppQuantityUnit) {
            cldtoMapper.toDto((CLAppQuantityUnit) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefAdminLevel2) {
            cldtoMapper.toDto((CLRefAdminLevel2) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefCommodity) {
            cldtoMapper.toDto((CLRefCommodity) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefCountry) {
            cldtoMapper.toDto((CLRefCountry) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefGearCharacteristic) {
            cldtoMapper.toDto((CLRefGearCharacteristic) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefLandingSite) {
            cldtoMapper.toDto((CLRefLandingSite) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefLanguageCountry) {
            cldtoMapper.toDto((CLRefLanguageCountry) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefProductType) {
            cldtoMapper.toDto((CLRefProductType) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefProduct) {
            cldtoMapper.toDto((CLRefProduct) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefRegion) {
            cldtoMapper.toDto((CLRefRegion) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CLRefSpecies) {
            cldtoMapper.toDto((CLRefSpecies) baseCodeListSupport, clDto);
        } else if (baseCodeListSupport instanceof CodeListSupport) {
            cldtoMapper.toDto((CodeListSupport) baseCodeListSupport, clDto);
        } else {
            cldtoMapper.toDto(baseCodeListSupport, clDto);
        }

        return clDto;
    }
}