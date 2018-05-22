package com.fancyx.cees.manager.busi;

import com.fancyx.cees.domain.busi.CEES_Concrete;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-19.
 */
public interface CEES_ConcreteManager {

    List<CEES_Concrete> selectByConstructionId(int constructionId);

    CEES_Concrete getConcrete (int concreteID);
}
