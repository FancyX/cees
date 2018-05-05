package com.fancyx.cees.dao.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;

/**
 * Created by 啊Q on 2018-05-02.
 */
public interface HunNingTuKangYaDao {

    /**
     * 分页查询混凝土抗压信息列表
     *
     * @param pageBean
     * @param hunNingTuKangYa
     * @return
     */
    PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaDTO hunNingTuKangYa);
}
