package com.fancyx.cees.service.busi;

import com.fancyx.cees.domain.vo.CEES_UserVO;
import com.fancyx.cees.domain.vo.SessionVO;

/**
 * Created by 啊Q on 2018-05-20.
 */
public interface LoginService {

    SessionVO login(CEES_UserVO cees_userVO) throws Exception;

}
