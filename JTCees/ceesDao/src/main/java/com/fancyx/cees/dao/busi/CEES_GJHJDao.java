package com.fancyx.cees.dao.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_GJHJ;
import com.fancyx.cees.domain.vo.CEES_GJHJVo;

/**
 * Created by 啊Q on 2018-07-19.
 */
public interface CEES_GJHJDao {
    PageBean<CEES_GJHJ> pageQuery(PageBean pageBean, CEES_GJHJVo vo);

    void delete(Integer id);

    void update(CEES_GJHJVo vo);

    Integer getMax_sn_project();

    int getCnumber();

    int getProjectnumber();

    String getGjhjnumber();

    void insert(CEES_GJHJVo vo);
}
