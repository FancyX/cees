package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_ConstructionDao;
import com.fancyx.cees.domain.busi.CEES_Construction;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.vo.CEES_ConstructionVo;
import com.fancyx.cees.manager.busi.CEES_ConstructionManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
@Service
public class CEES_ConstructionManagerImpl implements CEES_ConstructionManager {

    @Resource
    private CEES_ConstructionDao cees_constructionDao;

    @Override

    public CEES_Construction getConstruction(int constructionId) {
        return cees_constructionDao.getConstruction(constructionId);
    }

    @Override
    public PageBean pageQuery(PageBean pageBean, CEES_ConstructionVo ceesConcreteVo) {
        return cees_constructionDao.pageQuery(pageBean,ceesConcreteVo);
    }

    @Override
    public void delete(Integer id) {
        cees_constructionDao.delete(id);
    }

    @Override
    public void update(CEES_ConstructionVo ceesConcreteVo) {
        cees_constructionDao.update(ceesConcreteVo);
    }

    @Override
    public void insert(CEES_ConstructionVo ceesConstructionVo) {
        cees_constructionDao.insert(ceesConstructionVo);
    }

    @Override
    public Integer getMaxSn() {
        return cees_constructionDao.getMaxSn();
    }

    @Override
    public Integer getMaxCnumber() {
        return cees_constructionDao.getMaxCnumber();
    }

    @Override
    public List<CEES_ConstructionVo> getAll() {
        return cees_constructionDao.getAll();
    }

    @Override
    public Integer getMaxCid() {
        return cees_constructionDao.getMaxCid();
    }
}
