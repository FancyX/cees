package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_WCXKYDao;
import com.fancyx.cees.domain.busi.CEES_WCXKY;
import com.fancyx.cees.domain.vo.CEES_WCXKYVo;
import com.fancyx.cees.manager.busi.CEES_WCXKYManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-22.
 */
@Service
public class CEES_WCXKYManagerImpl implements CEES_WCXKYManager {


    @Autowired
    private CEES_WCXKYDao dao;

    @Override
    public PageBean<CEES_WCXKY> pageQuery(PageBean pageBean, CEES_WCXKYVo vo) {
        return dao.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        dao.delete(id);
    }

    @Override
    public void update(CEES_WCXKYVo vo) {
        dao.update(vo);
    }

    @Override
    public void insert(CEES_WCXKYVo vo) {
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
    public String getWcxnumber() {
        return dao.getWcxnumber();
    }
}
