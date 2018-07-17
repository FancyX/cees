package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_GJYCDao;
import com.fancyx.cees.domain.busi.CEES_GJYC;
import com.fancyx.cees.domain.vo.CEES_GJYCVo;
import com.fancyx.cees.manager.busi.CEES_GJYCManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-16.
 */
@Service
public class CEES_GJYCManagerImpl implements CEES_GJYCManager {

    @Autowired
    private CEES_GJYCDao dao;


    @Override
    public PageBean<CEES_GJYC> pageQuery(PageBean pageBean, CEES_GJYCVo cees_gjycVo) {
        return dao.pageQuery( pageBean,  cees_gjycVo) ;
    }

    @Override
    public void delete(Integer id) {
        dao.delete(id);
    }

    @Override
    public void update(CEES_GJYCVo vo) {
        dao.update(vo);
    }

    @Override
    public Integer getMax_sn_project() {
        return  dao.getMax_sn_project();
    }
}
