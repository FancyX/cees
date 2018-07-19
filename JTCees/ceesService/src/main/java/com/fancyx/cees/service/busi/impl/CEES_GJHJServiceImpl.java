package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_GJHJ;
import com.fancyx.cees.domain.vo.CEES_GJHJVo;
import com.fancyx.cees.manager.busi.CEES_GJHJManager;
import com.fancyx.cees.service.busi.CEES_GJHJService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-19.
 */
@Service
public class CEES_GJHJServiceImpl implements CEES_GJHJService {

    @Autowired
    private CEES_GJHJManager manager;

    @Override
    public PageBean<CEES_GJHJ> pageQuery(PageBean pageBean, CEES_GJHJVo vo) {
        return manager.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        manager.delete(id);
    }

    @Override
    public void update(CEES_GJHJVo vo) {
        manager.update(vo);
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
    public String getGjhjnumber() {
        return manager.getGjhjnumber();
    }

    @Override
    public void insert(CEES_GJHJVo vo) {
        manager.insert(vo);
    }
}
