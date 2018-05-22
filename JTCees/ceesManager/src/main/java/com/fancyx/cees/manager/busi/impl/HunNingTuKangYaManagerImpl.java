package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.HntkyDao;
import com.fancyx.cees.dao.busi.HunNingTuKangYaDao;
import com.fancyx.cees.domain.busi.Hntky;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.vo.HunNingTuKangYaVO;
import com.fancyx.cees.manager.busi.HntkyManager;
import com.fancyx.cees.manager.busi.HunNingTuKangYaManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class HunNingTuKangYaManagerImpl implements HunNingTuKangYaManager{
    @Resource
    private HunNingTuKangYaDao dao;

    @Override
    public PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaDTO hntky) {
        return dao.pageQuery(pageBean,hntky);
    }

    @Override
    public void insert(HunNingTuKangYa hunNingTuKangYa) {
        dao.insert(hunNingTuKangYa);
    }

    @Override
    public void delete(Integer id) {
        dao.delete(id);
    }

    @Override
    public void update(HunNingTuKangYaVO hunNingTuKangYaVO) {
        dao.update(hunNingTuKangYaVO);
    }

    @Override
    public Integer getMax_sn_project() {
        return dao.getMax_sn_project();
    }
}
