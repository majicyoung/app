package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSPage;
import com.fairagora.verifik8.v8web.data.domain.sys.SYSSubPage;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSPageRepository;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSSubPageRepository;
import com.fairagora.verifik8.v8web.mvc.admin.SYSPageDTOMapper;
import com.fairagora.verifik8.v8web.mvc.admin.dto.SYSSubPageDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class SubPageService extends AbstractV8Service {

    @Autowired
    protected SYSPageRepository sysPageRepository;

    @Autowired
    protected SYSSubPageRepository sysSubPageRepository;

    @Autowired
    protected SYSPageDTOMapper sysPageDTOMapper;

    @Transactional
    public List<SYSPage> getPages() {
        return sysPageRepository.findAll();
    }

    @Transactional
    public List<SYSSubPage> getSubPages() {
        return sysSubPageRepository.findAll();
    }

    public SYSSubPageDto getSYSSubPageDto(long id) {
        SYSSubPageDto dto = new SYSSubPageDto();
        sysPageDTOMapper.toDto(sysSubPageRepository.findOne(id), dto);
        return dto;
    }

    public void deleteSubPage(long id) {
        sysSubPageRepository.delete(id);
    }
}