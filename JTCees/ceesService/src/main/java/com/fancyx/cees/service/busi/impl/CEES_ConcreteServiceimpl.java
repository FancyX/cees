package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.CEES_Concrete;
import com.fancyx.cees.manager.busi.CEES_ConcreteManager;
import com.fancyx.cees.service.busi.CEES_ConcreteService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-19.
 */
@Service
public class CEES_ConcreteServiceimpl implements CEES_ConcreteService {

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
}
