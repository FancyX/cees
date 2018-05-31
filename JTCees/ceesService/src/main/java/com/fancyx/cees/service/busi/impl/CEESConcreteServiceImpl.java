package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Concrete;
import com.fancyx.cees.domain.vo.CEES_ConcreteVo;
import com.fancyx.cees.manager.busi.CEES_ConcreteManager;
import com.fancyx.cees.service.busi.CEESConcreteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-19.
 */
@Service
public class CEESConcreteServiceImpl implements CEESConcreteService {

    @Resource
    private CEES_ConcreteManager cees_concreteManager;

    @Override
    public List<CEES_Concrete> selectByConstructionId(int constructionId) {
        return cees_concreteManager.selectByConstructionId(constructionId);
    }

    @Override
    public CEES_Concrete getConcrete(int concreteID) {
        return cees_concreteManager.getConcrete(concreteID);

    }

    @Override
    public PageBean<CEES_ConcreteVo> pageQuery(PageBean pageBean, CEES_ConcreteVo cees_concreteVo) {
        return cees_concreteManager.pageQuery(pageBean, cees_concreteVo);
    }

    @Override
    public void update(CEES_ConcreteVo cees_concreteVo) {
        cees_concreteManager.update(cees_concreteVo);
    }

    @Override
    public int getMaxSn() {
        return cees_concreteManager.getMaxSn();
    }

    @Override
    public void insert(CEES_ConcreteVo cees_concreteVo) {
        cees_concreteManager.insert(cees_concreteVo);
    }

    @Override
    public void delete(Integer id) {
        cees_concreteManager.delete(id);
    }
}
