package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_TestDao;
import com.fancyx.cees.domain.busi.CEES_Test;
import com.fancyx.cees.domain.vo.CEES_TestVo;
import com.fancyx.cees.manager.busi.CEES_TestManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CEES_TestManagerImpl implements CEES_TestManager {

    @Autowired
    private CEES_TestDao dao;

    @Override
    public PageBean<CEES_Test> pageQuery(PageBean pageBean, CEES_TestVo vo) {
        return dao.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        dao.delete(id);
    }

    @Override
    public void update(CEES_TestVo vo) {
        dao.update(vo);
    }

    @Override
    public void insert(CEES_TestVo vo) {
        dao.insert(vo);
    }
}
