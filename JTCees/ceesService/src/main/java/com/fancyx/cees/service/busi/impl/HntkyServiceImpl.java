package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.Hntky;
import com.fancyx.cees.manager.busi.HntkyManager;
import com.fancyx.cees.service.busi.HntkyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class HntkyServiceImpl implements HntkyService{
    @Resource
    private HntkyManager hntkyManager;
    @Override
    public PageBean<Hntky> pageQuery(PageBean pageBean, Hntky hntky) {
        return hntkyManager.pageQuery(pageBean,hntky);
    }
}
