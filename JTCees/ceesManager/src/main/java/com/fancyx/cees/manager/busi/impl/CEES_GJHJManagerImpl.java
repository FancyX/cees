package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_GJHJDao;
import com.fancyx.cees.domain.busi.CEES_GJHJ;
import com.fancyx.cees.domain.vo.CEES_GJHJVo;
import com.fancyx.cees.manager.busi.CEES_GJHJManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-19.
 */
@Service
public class CEES_GJHJManagerImpl implements CEES_GJHJManager {

    @Autowired
    private CEES_GJHJDao dao;

    @Override
    public PageBean<CEES_GJHJ> pageQuery(PageBean pageBean, CEES_GJHJVo vo) {
        return dao.pageQuery(pageBean, vo);
    }

    @Override
    public void delete(Integer id) {
        dao.delete(id);
    }

    @Override
    public void update(CEES_GJHJVo vo) {
        dao.update(vo);
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
    public String getGjhjnumber() {
        return dao.getGjhjnumber();
    }

    @Override
    public void insert(CEES_GJHJVo vo) {
        dao.insert(vo);
    }
}
