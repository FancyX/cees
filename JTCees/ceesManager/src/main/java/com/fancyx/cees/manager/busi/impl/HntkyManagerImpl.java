package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.HntkyDao;
import com.fancyx.cees.domain.busi.Hntky;
import com.fancyx.cees.manager.busi.HntkyManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.xml.ws.ServiceMode;

@Service
public class HntkyManagerImpl implements HntkyManager{
    @Resource
    private HntkyDao hntkyDao;
    @Override
    public PageBean<Hntky> pageQuery(PageBean pageBean, Hntky hntky) {
        return hntkyDao.pageQuery(pageBean,hntky);
    }
}
