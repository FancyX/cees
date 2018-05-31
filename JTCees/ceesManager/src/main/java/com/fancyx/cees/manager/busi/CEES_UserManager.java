package com.fancyx.cees.manager.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_User;
import com.fancyx.cees.domain.vo.CEES_UserVO;

/**
 * Created by 啊Q on 2018-05-20.
 */
public interface CEES_UserManager {

    CEES_User login(CEES_UserVO cees_userVO);

    PageBean<CEES_User> pageQuery(PageBean pageBean, CEES_UserVO cees_userVO);

    void delete(Integer id);

    void update(CEES_UserVO ceesUserVO);

    void insert(CEES_UserVO ceesUserVO);

    Integer getMaxSn();
}


