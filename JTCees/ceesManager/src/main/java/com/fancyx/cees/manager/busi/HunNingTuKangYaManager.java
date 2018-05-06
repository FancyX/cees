package com.fancyx.cees.manager.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;

public interface HunNingTuKangYaManager {
    /**
     * 分页查询货架规格信息列表
     * @param pageBean
     * @param hntky
     * @return
     */
    PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaDTO hntky);


    /**
     * 添加一条混凝土抗压信息
     *
     * @param hunNingTuKangYa
     * @return
     */
    void insert(HunNingTuKangYa hunNingTuKangYa);

}
