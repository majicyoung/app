package com.fairagora.verifik8.v8web.mvc.admin;

import com.fairagora.verifik8.v8web.data.domain.reg.product.RegEntityProductSupplier;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppAdministrativeCharacteristicTypeRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLAppQuantityUnitRepository;
import com.fairagora.verifik8.v8web.data.repo.cl.CLRefProductTypesRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityProductSupplierRepository;
import com.fairagora.verifik8.v8web.data.repo.reg.RegEntityRepository;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLColumnDto;
import com.fairagora.verifik8.v8web.mvc.admin.dto.CLDto;
import com.fairagora.verifik8.v8web.mvc.admin.dto.SYSSubPageDto;
import com.fairagora.verifik8.v8web.services.CodeListsService;
import com.fairagora.verifik8.v8web.services.SubPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
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
    protected SubPageService subPageService;

    @Autowired
    protected CLAppAdministrativeCharacteristicTypeRepository clAppAdministrativeCharacteristicTypeRepository;

    @Autowired
    protected RegEntityRepository regEntityRepository;

    @Autowired
    protected CLRefProductTypesRepository clRefProductTypesRepository;
    @Autowired
    protected CLAppQuantityUnitRepository clAppQuantityUnitRepository;

    @RequestMapping(value = "/admin/admin.html", method = RequestMethod.GET)
    public String adminPage(Model mv) {

        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        return "admin/admin";
    }

    /****************** CL management *****************/

    @PreAuthorize("hasAuthority('R_CLBROWSER')")
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

    @PreAuthorize("hasAuthority('R_CLBROWSER')")
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

    @PreAuthorize("hasAuthority('R_CLEDITOR')")
    @RequestMapping(value = "/admin/codelists/browser/{table}/create.html", method = RequestMethod.GET)
    public String createCL(@PathVariable("table") String table, Model mv) {

        CLColumnDto clColumnDto = codeListservice.getColumn(table);

        prepareForCLEdition(table, clColumnDto, new CLDto(), mv);

        return "admin/codelists/create";
    }

    @PreAuthorize("hasAuthority('R_CLEDITOR')")
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

    @PreAuthorize("hasAuthority('R_CLEDITOR')")
    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/update.html", method = RequestMethod.POST)
    public String updateCL(@PathVariable("table") String table, @Validated @ModelAttribute("clDto") CLDto dto, @PathVariable("id") Long id, BindingResult bindResults, Model mv) {
        try {
            codeListservice.addCL(table, dto, id);
            return "redirect:/admin/codelists/browser/" + table + "/";
        } catch (Exception e) {
            return "redirect:/admin/codelists/browser/" + table + "/?error=" + e.getCause().getCause().getMessage();
        }
    }

    @PreAuthorize("hasAuthority('W_CLEDITOR')")
    @RequestMapping(value = "/admin/codelists/browser/{table}/{languageId}/{countryId}/update.html", method = RequestMethod.POST)
    public String updateCL(@PathVariable("table") String table, @Validated @ModelAttribute("clDto") CLDto dto, @PathVariable("languageId") Long languageId, @PathVariable("countryId") Long countryId, BindingResult bindResults, Model mv) {
        try {
            codeListservice.addCL(dto, languageId, countryId);
            return "redirect:/admin/codelists/browser/" + table + "/";
        } catch (Exception e) {
            return "redirect:/admin/codelists/browser/" + table + "/?error=" + e.getCause().getCause().getMessage();
        }
    }

    @PreAuthorize("hasAuthority('W_CLEDITOR')")
    @RequestMapping(value = "/admin/codelists/browser/{table}/{id}/delete.html", method = RequestMethod.POST)
    public String deleteCL(@PathVariable("table") String table, @PathVariable("id") Long id, Model mv) {
        codeListservice.deleteCL(table, id);
        return "redirect:/admin/codelists/browser/" + table + "/";
    }

    @PreAuthorize("hasAuthority('R_CLEDITOR')")
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
    @PreAuthorize("hasAuthority('R_CLEDITOR')")
    @RequestMapping(value = "/admin/codelists/browser/{table}/{languageId}/{countryId}/edit.html", method = RequestMethod.GET)
    public String editCL(@PathVariable("table") String table, @PathVariable("languageId") Long languageId, @PathVariable("countryId") Long countryId, Model mv) {

        // Get all column names
        CLColumnDto clColumnDto = codeListservice.getColumn(table);

        // Get data
        CLDto clDto = codeListservice.getCL(languageId, countryId);
        prepareForCLEdition(table, clColumnDto, clDto, mv);

        return "admin/codelists/create";
    }

    @PreAuthorize("hasAuthority('W_CLEDITOR')")
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
        mv.addAttribute("regEntity", regEntityRepository.findPruductSupplier());
        mv.addAttribute("clRefProductTypes", clRefProductTypesRepository.findAll());
        mv.addAttribute("clAppQuantityUnit", clAppQuantityUnitRepository.findAll());
    }

    /****************** Sub page *****************/

    @PreAuthorize("hasAuthority('R_SUBPAGEBROWSER')")
    @RequestMapping(value = "/admin/subpages/listing.html", method = RequestMethod.GET)
    public String subPage(Model mv) {

        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        mv.addAttribute("subPages", subPageService.getSubPages());

        return "admin/subpages/listing";
    }

    @PreAuthorize("hasAuthority('R_SUBPAGEEDITOR')")
    @RequestMapping(value = "/admin/subpages/create.html", method = RequestMethod.GET)
    public String createSubPage(Model mv) {

        prepareForSubPageEdition(new SYSSubPageDto(), mv);

        return "admin/subpages/create";
    }

    @PreAuthorize("hasAuthority('W_SUBPAGEEDITOR')")
    @RequestMapping(value = "/admin/subpages/create.html", method = RequestMethod.POST)
    public String createSubPage(@Validated @ModelAttribute("dto") SYSSubPageDto dto, BindingResult bindResults, Model mv) {

        subPageService.addSYSSubPageDto(dto);

        return "redirect:/admin/subpages/listing.html";
    }

    @PreAuthorize("hasAuthority('W_SUBPAGEEDITOR')")
    @RequestMapping(value = "/admin/subpages/{id}/edit.html", method = RequestMethod.GET)
    public String editSubPage(@PathVariable("id") Long id, Model mv) {

        SYSSubPageDto dto = subPageService.getSYSSubPageDto(id);

        prepareForSubPageEdition(dto, mv);

        return "admin/subpages/create";
    }

    @PreAuthorize("hasAuthority('W_SUBPAGEEDITOR')")
    @RequestMapping(value = "/admin/subpages/{id}/update.html", method = RequestMethod.POST)
    public String updateSubPage(@Validated @ModelAttribute("dto") SYSSubPageDto dto, @PathVariable("id") Long id, BindingResult bindResults, Model mv) {

        subPageService.updateSYSSubPageDto(id, dto);

        return "redirect:/admin/subpages/listing.html";
    }

    @PreAuthorize("hasAuthority('W_SUBPAGEEDITOR')")
    @RequestMapping(value = "/admin/subpages/{id}/delete.html", method = RequestMethod.POST)
    public String deleteCL(@PathVariable("id") Long id, Model mv) {
        subPageService.deleteSubPage(id);
        return "redirect:/admin/subpages/listing.html";
    }

    private void prepareForSubPageEdition(SYSSubPageDto dto, Model mv) {
        V8Page p = new V8Page();
        p.setTitle("admin.home");
        p.setDescription("admin.home");
        p.setNavBarPrefix("/admin");
        mv.addAttribute("v8p", p);

        mv.addAttribute("newEntity", dto.getId() == null);
        mv.addAttribute("dto", dto);
        mv.addAttribute("allPages", subPageService.getPages());
    }
}