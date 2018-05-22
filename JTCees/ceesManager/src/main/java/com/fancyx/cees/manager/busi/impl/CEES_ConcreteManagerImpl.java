package com.fancyx.cees.manager.busi.impl;


import com.fancyx.cees.dao.busi.CEES_ConcreteDao;
import com.fancyx.cees.domain.busi.CEES_Concrete;
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
}
