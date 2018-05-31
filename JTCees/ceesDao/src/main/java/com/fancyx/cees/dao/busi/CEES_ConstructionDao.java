package com.fancyx.cees.dao.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Construction;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.vo.CEES_ConstructionVo;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-19.
 */
public interface CEES_ConstructionDao {

    CEES_Construction getConstruction(int constructionId);

    void insert(CEES_ConstructionVo ceesConstructionVo);

    void update(CEES_ConstructionVo ceesConstructionVo);

    void delete(Integer id);

    PageBean<CEES_Construction> pageQuery(PageBean pageBean, CEES_ConstructionVo ceesConcreteVo);

    Integer getMaxSn();

    Integer getMaxCnumber();

    List<CEES_ConstructionVo> getAll();
}
