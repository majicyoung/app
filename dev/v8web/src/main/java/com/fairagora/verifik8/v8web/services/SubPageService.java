package com.fairagora.verifik8.v8web.services;

import com.fairagora.verifik8.v8web.data.domain.sys.SYSSubPage;
import com.fairagora.verifik8.v8web.data.repo.sys.SYSSubPageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class SubPageService extends AbstractV8Service {

    @Autowired
    protected SYSSubPageRepository sysSubPageRepository;

    @Transactional
    public List<SYSSubPage> getSubPages() {
        return sysSubPageRepository.findAll();
    }
}