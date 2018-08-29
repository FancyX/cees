package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Test;
import com.fancyx.cees.domain.vo.CEES_TestVo;
import com.fancyx.cees.manager.busi.CEES_TestManager;
import com.fancyx.cees.service.busi.CEES_TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CEES_TestServiceImpl implements CEES_TestService {

    @Autowired
    private CEES_TestManager manager;

    @Override
    public PageBean<CEES_Test> pageQuery(PageBean pageBean, CEES_TestVo vo) {
        return manager.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
         manager.delete(id);
    }

    @Override
    public void update(CEES_TestVo vo) {
         manager.update(vo);
    }

    @Override
    public void insert(CEES_TestVo vo) {
         manager.insert(vo);
    }
}
