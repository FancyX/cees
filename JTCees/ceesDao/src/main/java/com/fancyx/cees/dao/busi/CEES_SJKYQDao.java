package com.fancyx.cees.dao.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_SJKYQD;
import com.fancyx.cees.domain.vo.CEES_SJKYQDVo;

/**
 * Created by 啊Q on 2018-07-14.
 */
public interface CEES_SJKYQDao {
    PageBean<CEES_SJKYQD> pageQuery(PageBean pageBean, CEES_SJKYQDVo cees_sjkyqdVo);

    void delete(Integer id);

    void update(CEES_SJKYQDVo cees_sjkyqdVo);

    void insert(CEES_SJKYQDVo cees_sjkyqdVo);

    Integer getMax_sn_project();

    int getCnumber();

    int getProjectnumber();

    String getSjkynumber();
}


