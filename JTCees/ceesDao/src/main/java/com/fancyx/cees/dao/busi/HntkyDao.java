package com.fancyx.cees.dao.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.Hntky;

public interface HntkyDao {
    /**
     * 分页查询货架规格信息列表
     * @param pageBean
     * @param hntky
     * @return
     */
    public PageBean<Hntky> pageQuery(PageBean pageBean, Hntky hntky);
}
