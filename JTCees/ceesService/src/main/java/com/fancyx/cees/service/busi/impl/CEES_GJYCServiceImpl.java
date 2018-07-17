package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_GJYC;
import com.fancyx.cees.domain.vo.CEES_GJYCVo;
import com.fancyx.cees.manager.busi.CEES_GJYCManager;
import com.fancyx.cees.service.busi.CEES_GJYCService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-16.
 */
@Service
public class CEES_GJYCServiceImpl implements CEES_GJYCService {

    @Autowired
    private CEES_GJYCManager manager;

    @Override
    public PageBean<CEES_GJYC> pageQuery(PageBean pageBean, CEES_GJYCVo cees_gjycVo) {
        return manager.pageQuery( pageBean,  cees_gjycVo);
    }

    @Override
    public void delete(Integer id) {
        manager.delete(id);
    }

    @Override
    public void update(CEES_GJYCVo vo)  {
        manager.update(vo);

    }

    @Override
    public Integer getMax_sn_project() {
        return manager.getMax_sn_project();
    }

    @Override
    public int getCnumber() {
        return  manager.getCnumber();
    }

    @Override
    public int getProjectnumber() {
        return  manager.getProjectnumber();
    }
}
