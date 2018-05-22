package com.fancyx.cees.dao.busi;

import com.fancyx.cees.domain.busi.CEES_User;
import com.fancyx.cees.domain.vo.CEES_UserVO;

/**
 * Created by 啊Q on 2018-05-19.
 */
public interface CEES_UserDao {
    CEES_User login(CEES_UserVO cees_userVO);
}
