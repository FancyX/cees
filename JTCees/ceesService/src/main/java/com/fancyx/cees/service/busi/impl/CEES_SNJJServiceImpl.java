package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_SNJJ;
import com.fancyx.cees.domain.vo.CEES_SNJJVo;
import com.fancyx.cees.manager.busi.CEES_SNJJManager;
import com.fancyx.cees.service.busi.CEES_SNJJService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-22.
 */
@Service
public class CEES_SNJJServiceImpl implements CEES_SNJJService {


    @Autowired
    private CEES_SNJJManager manager;

    @Override
    public PageBean<CEES_SNJJ> pageQuery(PageBean pageBean, CEES_SNJJVo vo) {
        return manager.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        manager.delete(id);
    }

    @Override
    public void update(CEES_SNJJVo vo) {
        manager.update(vo);
    }

    @Override
    public void insert(CEES_SNJJVo vo) {
        manager.insert(vo);
    }

    @Override
    public Integer getMax_sn_project() {
        return manager.getMax_sn_project();
    }

    @Override
    public int getCnumber() {
        return manager.getCnumber();
    }

    @Override
    public int getProjectnumber() {
        return manager.getProjectnumber();
    }

    @Override
    public String getSnjjnumber() {
        return manager.getSnjjnumber();
    }
}
