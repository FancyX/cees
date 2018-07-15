package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_SJKYQDao;
import com.fancyx.cees.domain.busi.CEES_SJKYQD;
import com.fancyx.cees.domain.vo.CEES_SJKYQDVo;
import com.fancyx.cees.manager.busi.CEES_SJKYQDManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-14.
 */
@Service
public class CEES_SJKYQDManagerImpl implements CEES_SJKYQDManager {


    @Autowired
    private CEES_SJKYQDao cees_sjkyqDao;

    @Override
    public PageBean<CEES_SJKYQD> pageQuery(PageBean pageBean, CEES_SJKYQDVo cees_sjkyqdVo) {
        return cees_sjkyqDao.pageQuery(pageBean, cees_sjkyqdVo);
    }

    @Override
    public void delete(Integer id) {
        cees_sjkyqDao.delete(id);
    }

    @Override
    public void update(CEES_SJKYQDVo cees_sjkyqdVo) {
        cees_sjkyqDao.update(cees_sjkyqdVo);
    }

    @Override
    public void insert(CEES_SJKYQDVo cees_sjkyqdVo) {
        cees_sjkyqDao.insert(cees_sjkyqdVo);
    }

    @Override
    public Integer getMax_sn_project() {
        return cees_sjkyqDao.getMax_sn_project();
    }

    @Override
    public int getCnumber() {
        return cees_sjkyqDao.getCnumber();
    }

    @Override
    public int getProjectnumber() {
        return cees_sjkyqDao.getProjectnumber();
    }

    @Override
    public String getSjkynumber() {
        return cees_sjkyqDao.getSjkynumber();
    }
}
