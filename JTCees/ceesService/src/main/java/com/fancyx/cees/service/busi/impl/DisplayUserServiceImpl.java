package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_User;
import com.fancyx.cees.manager.busi.DisplayUserManager;
import com.fancyx.cees.service.busi.DisplayUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-28.
 */
@Service
public class DisplayUserServiceImpl implements DisplayUserService {

    @Autowired
    private  DisplayUserManager displayUserManager;

    @Override
    public List<Display_User> selectAll() {
        return displayUserManager.selectAll();
    }
}
