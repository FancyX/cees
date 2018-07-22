package com.fancyx.cees.manager.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_SNJJ;
import com.fancyx.cees.domain.vo.CEES_SNJJVo;

/**
 * Created by 啊Q on 2018-07-22.
 */
public interface CEES_SNJJManager {
    PageBean<CEES_SNJJ> pageQuery(PageBean pageBean, CEES_SNJJVo vo);

    void delete(Integer id);

    void update(CEES_SNJJVo vo);

    void insert(CEES_SNJJVo vo);

    Integer getMax_sn_project();

    int getCnumber();

    int getProjectnumber();

    String getSnjjnumber();
}
