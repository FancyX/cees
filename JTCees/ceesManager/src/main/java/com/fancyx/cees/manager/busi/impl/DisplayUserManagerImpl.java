package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_UserDao;
import com.fancyx.cees.domain.busi.Display_User;
import com.fancyx.cees.manager.busi.DisplayUserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-28.
 */
@Service
public class DisplayUserManagerImpl implements DisplayUserManager {

    @Autowired
    private Display_UserDao displayUserDao;

    @Override
    public List<Display_User> selectAll() {
        return displayUserDao.selectAll();
    }
}
