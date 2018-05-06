package com.fancyx.cees.service.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.common.ResultBean;

public interface HunNingTuKangYaService {
    /**
     * 分页查询货架规格信息列表
     * @param pageBean
     * @param hntky
     * @return
     */
    public PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaDTO hntky);


    /**
     * 添加一条混凝土抗压信息
     *
     * @param hunNingTuKangYa
     * @return
     */
    ResultBean insert(HunNingTuKangYa hunNingTuKangYa);
}
