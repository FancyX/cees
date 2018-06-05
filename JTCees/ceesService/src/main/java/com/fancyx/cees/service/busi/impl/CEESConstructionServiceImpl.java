package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.vo.CEES_ConstructionVo;
import com.fancyx.cees.manager.busi.CEES_ConstructionManager;
import com.fancyx.cees.service.busi.CEESConstructionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-26.
 */
@Service
public class CEESConstructionServiceImpl implements CEESConstructionService {


    @Autowired
    private CEES_ConstructionManager cees_constructionManager;

    @Override
    public PageBean<CEES_ConstructionVo> pageQuery(PageBean pageBean, CEES_ConstructionVo ceesConcreteVo) {
        return  cees_constructionManager.pageQuery(pageBean,ceesConcreteVo);
    }

    @Override
    public void delete(Integer id) {
        cees_constructionManager.delete(id);
    }

    @Override
    public void update(CEES_ConstructionVo ceesConcreteVo) {
        cees_constructionManager.update(ceesConcreteVo);

    }

    @Override
    public void insert(CEES_ConstructionVo ceesConstructionVo) {
        cees_constructionManager.insert(ceesConstructionVo);
    }

    @Override
    public Integer getMaxSn() {
        return  cees_constructionManager.getMaxSn();
    }

    @Override
    public Integer getMaxCnumber() {
        return  cees_constructionManager.getMaxCnumber();
    }

    @Override
    public List<CEES_ConstructionVo> getAll() {
        return cees_constructionManager.getAll();
    }

    @Override
    public Integer getMaxCid() {
        return cees_constructionManager.getMaxCid();
    }
}
