package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.CEES_ConstructionDao;
import com.fancyx.cees.domain.busi.CEES_Construction;
import com.fancyx.cees.manager.busi.CEES_ConstructionManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

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
}
