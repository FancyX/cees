package com.fancyx.cees.manager.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_WCXKY;
import com.fancyx.cees.domain.vo.CEES_WCXKYVo; /**
 * Created by 啊Q on 2018-07-22.
 */
public interface CEES_WCXKYManager {
    PageBean<CEES_WCXKY> pageQuery(PageBean pageBean, CEES_WCXKYVo vo);

    void delete(Integer id);

    void update(CEES_WCXKYVo vo);

    void insert(CEES_WCXKYVo vo);

    Integer getMax_sn_project();

    int getCnumber();

    int getProjectnumber();

    String getWcxnumber();
}
