package com.fancyx.cees.service.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;

public interface HunNingTuKangYaService {
    /**
     * 分页查询货架规格信息列表
     * @param pageBean
     * @param hntky
     * @return
     */
    public PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYa hntky);

}
