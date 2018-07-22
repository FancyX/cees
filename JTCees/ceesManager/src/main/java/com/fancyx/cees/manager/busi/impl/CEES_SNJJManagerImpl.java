package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_SNJJDao;
import com.fancyx.cees.domain.busi.CEES_SNJJ;
import com.fancyx.cees.domain.vo.CEES_SNJJVo;
import com.fancyx.cees.manager.busi.CEES_SNJJManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-22.
 */
@Service
public class CEES_SNJJManagerImpl implements CEES_SNJJManager {
    @Autowired
    private CEES_SNJJDao dao;

    @Override

    public PageBean<CEES_SNJJ> pageQuery(PageBean pageBean, CEES_SNJJVo vo) {
        return dao.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        dao. delete(id);
    }

    @Override
    public void update(CEES_SNJJVo vo) {
        dao. update(vo);
    }

    @Override
    public void insert(CEES_SNJJVo vo) {
        dao.insert(vo);
    }

    @Override
    public Integer getMax_sn_project() {
        return dao.getMax_sn_project();
    }

    @Override
    public int getCnumber() {
        return dao.getCnumber();
    }

    @Override
    public int getProjectnumber() {
        return dao.getProjectnumber();
    }

    @Override
    public String getSnjjnumber() {
        return dao.getSnjjnumber();
    }
}
