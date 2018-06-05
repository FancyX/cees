package com.fancyx.cees.manager.busi.impl;


import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_ConcreteDao;
import com.fancyx.cees.domain.busi.CEES_Concrete;
import com.fancyx.cees.domain.vo.CEES_ConcreteVo;
import com.fancyx.cees.manager.busi.CEES_ConcreteManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-19.
 */
@Service
public class CEES_ConcreteManagerImpl implements CEES_ConcreteManager {

    @Resource
    private CEES_ConcreteDao cees_concreteDao;

    @Override
    public List<CEES_Concrete> selectByConstructionId(int constructionId) {
        return cees_concreteDao.selectByConstructionId(constructionId);
    }

    @Override
    public CEES_Concrete getConcrete(int concreteID) {
        return cees_concreteDao.getConcrete(concreteID);
    }

    @Override
    public PageBean<CEES_ConcreteVo> pageQuery(PageBean pageBean, CEES_ConcreteVo cees_concreteVo) {
        return cees_concreteDao.pageQuery(pageBean,cees_concreteVo);
    }

    @Override
    public void update(CEES_ConcreteVo cees_concreteVo) {
        cees_concreteDao.update(cees_concreteVo);
    }

    @Override
    public int getMaxSn() {
        return cees_concreteDao.getMaxSn();
    }

    @Override
    public void insert(CEES_ConcreteVo cees_concreteVo) {
        cees_concreteDao.insert( cees_concreteVo);
    }

    @Override
    public void delete(Integer id) {
        cees_concreteDao.delete(id);
    }

    @Override
    public int getMaxCcid() {
        return cees_concreteDao.getMaxCcid();
    }
}
