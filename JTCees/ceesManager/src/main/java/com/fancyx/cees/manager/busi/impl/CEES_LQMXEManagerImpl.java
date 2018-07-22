package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_LQMXEDao;
import com.fancyx.cees.domain.busi.CEES_LQMXE;
import com.fancyx.cees.domain.vo.CEES_LQMXEVo;
import com.fancyx.cees.manager.busi.CEES_LQMXEManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-21.
 */
@Service
public class CEES_LQMXEManagerImpl implements CEES_LQMXEManager {


    @Autowired
    private CEES_LQMXEDao dao;

    @Override
    public PageBean<CEES_LQMXE> pageQuery(PageBean pageBean, CEES_LQMXEVo vo) {
        return dao.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        dao.delete(id);
    }

    @Override
    public void update(CEES_LQMXEVo vo) {
        dao.update(vo);
    }

    @Override
    public void insert(CEES_LQMXEVo vo) {

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
    public String getLqmxenumber() {
        return dao.getLqmxenumber();
    }
}
