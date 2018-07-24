package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_WCXKY;
import com.fancyx.cees.domain.vo.CEES_WCXKYVo;
import com.fancyx.cees.manager.busi.CEES_WCXKYManager;
import com.fancyx.cees.service.busi.CEES_WCXKYService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-22.
 */
@Service
public class CEES_WCXKYServiceImpl implements CEES_WCXKYService {


    @Autowired
    private CEES_WCXKYManager manager;

    @Override
    public PageBean<CEES_WCXKY> pageQuery(PageBean pageBean, CEES_WCXKYVo vo) {
        return manager.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        manager.delete(id);
    }

    @Override
    public void update(CEES_WCXKYVo vo) {
        manager.update(vo);
    }

    @Override
    public void insert(CEES_WCXKYVo vo) {
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
    public String getWcxnumber() {
        return manager.getWcxnumber();
    }
}
