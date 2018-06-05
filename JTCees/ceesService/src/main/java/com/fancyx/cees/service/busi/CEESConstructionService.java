package com.fancyx.cees.service.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Construction;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.vo.CEES_ConstructionVo;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-26.
 */
public interface CEESConstructionService {
    PageBean<CEES_ConstructionVo> pageQuery(PageBean pageBean, CEES_ConstructionVo ceesConcreteVo);

    void delete(Integer id);

    void update(CEES_ConstructionVo ceesConcreteVo);

    void insert(CEES_ConstructionVo ceesConstructionVo);

    Integer getMaxSn();

    Integer getMaxCnumber();

    List<CEES_ConstructionVo> getAll();

    Integer getMaxCid();
}



