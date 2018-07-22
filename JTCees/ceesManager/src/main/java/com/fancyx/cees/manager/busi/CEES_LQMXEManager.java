package com.fancyx.cees.manager.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_LQMXE;
import com.fancyx.cees.domain.vo.CEES_LQMXEVo;

/**
 * Created by 啊Q on 2018-07-21.
 */
public interface CEES_LQMXEManager {
    PageBean<CEES_LQMXE> pageQuery(PageBean pageBean, CEES_LQMXEVo vo);

    void delete(Integer id);

    void update(CEES_LQMXEVo vo);

    void insert(CEES_LQMXEVo vo);

    Integer getMax_sn_project();

    int getCnumber();

    int getProjectnumber();

    String getLqmxenumber();
}
