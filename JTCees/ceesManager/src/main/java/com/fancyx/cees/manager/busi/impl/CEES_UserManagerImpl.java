package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.CEES_UserDao;
import com.fancyx.cees.domain.busi.CEES_User;
import com.fancyx.cees.domain.vo.CEES_UserVO;
import com.fancyx.cees.manager.busi.CEES_UserManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by 啊Q on 2018-05-20.
 */
@Service
public class CEES_UserManagerImpl implements CEES_UserManager {

    @Resource
    private CEES_UserDao cees_userDao;

    @Override
    public CEES_User login(CEES_UserVO cees_userVO) {
        return cees_userDao.login(cees_userVO);
    }
}
