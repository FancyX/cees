package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_LQMXE;
import com.fancyx.cees.domain.vo.CEES_LQMXEVo;
import com.fancyx.cees.manager.busi.CEES_LQMXEManager;
import com.fancyx.cees.service.busi.CEES_LQMXEService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-21.
 */
@Service
public class CEES_LQMXEServiceImpl implements CEES_LQMXEService {

    @Autowired
    private CEES_LQMXEManager manager;

    @Override
    public PageBean<CEES_LQMXE> pageQuery(PageBean pageBean, CEES_LQMXEVo vo) {
        return manager.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        manager.delete(id);
    }

    @Override
    public void update(CEES_LQMXEVo vo) {
        manager.update(vo);
    }

    @Override
    public void insert(CEES_LQMXEVo vo) {
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
    public String getLqmxenumber() {
        return manager.getLqmxenumber();
    }
}
