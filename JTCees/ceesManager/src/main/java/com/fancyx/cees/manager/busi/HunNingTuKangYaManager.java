package com.fancyx.cees.manager.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;

public interface HunNingTuKangYaManager {
    /**
     * 分页查询货架规格信息列表
     * @param pageBean
     * @param hntky
     * @return
     */
    PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYa hntky);

}
