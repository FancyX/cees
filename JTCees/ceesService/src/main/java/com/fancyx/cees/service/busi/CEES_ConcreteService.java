package com.fancyx.cees.service.busi;

import com.fancyx.cees.domain.busi.CEES_Concrete;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-19.
 */
public interface CEES_ConcreteService {

    List<CEES_Concrete> selectByConstructionId(int constructionId);

    CEES_Concrete getConcrete (int concreteID);
}
