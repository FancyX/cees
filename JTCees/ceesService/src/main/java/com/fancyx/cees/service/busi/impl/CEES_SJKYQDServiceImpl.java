package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_SJKYQD;
import com.fancyx.cees.domain.vo.CEES_SJKYQDVo;
import com.fancyx.cees.manager.busi.CEES_SJKYQDManager;
import com.fancyx.cees.service.busi.CEES_SJKYQDService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-07-14.
 */
@Service
public class CEES_SJKYQDServiceImpl implements CEES_SJKYQDService {

    @Autowired
    private CEES_SJKYQDManager cees_sjkyqdManager;

    @Override
    public PageBean<CEES_SJKYQD> pageQuery(PageBean pageBean, CEES_SJKYQDVo cees_sjkyqdVo) {

        return cees_sjkyqdManager.pageQuery(pageBean, cees_sjkyqdVo);

    }

    @Override
    public void delete(Integer id) {
        cees_sjkyqdManager.delete(id);
    }

    @Override
    public void update(CEES_SJKYQDVo cees_sjkyqdVo) {
        cees_sjkyqdManager.update(cees_sjkyqdVo);
    }

    @Override
    public void insert(CEES_SJKYQDVo cees_sjkyqdVo) {
        cees_sjkyqdManager.insert(cees_sjkyqdVo);
    }

    @Override
    public Integer getMax_sn_project() {
        return  cees_sjkyqdManager.getMax_sn_project();
    }

    @Override
    public int getCnumber() {
        return  cees_sjkyqdManager.getCnumber();
    }

    @Override
    public int getProjectnumber() {
        return  cees_sjkyqdManager.getProjectnumber();
    }

    @Override
    public String getSjkynumber() {
        return  cees_sjkyqdManager.getSjkynumber();
    }
}
