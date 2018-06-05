package com.fancyx.cees.service.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Concrete;
import com.fancyx.cees.domain.vo.CEES_ConcreteVo;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-19.
 */
public interface CEESConcreteService {

    List<CEES_Concrete> selectByConstructionId(int constructionId);

    CEES_Concrete getConcrete (int concreteID);

    PageBean<CEES_ConcreteVo> pageQuery(PageBean pageBean, CEES_ConcreteVo cees_concreteVo);

    void update(CEES_ConcreteVo cees_concreteVo);

    int getMaxSn();

    void insert(CEES_ConcreteVo cees_concreteVo);

    void delete(Integer id);

    int getMaxCcid();

}
