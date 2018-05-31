package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_User;
import com.fancyx.cees.domain.vo.CEES_UserVO;
import com.fancyx.cees.manager.busi.CEES_UserManager;
import com.fancyx.cees.service.busi.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-05-28.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private CEES_UserManager cees_userManager;


    @Override
    public PageBean<CEES_User> pageQuery(PageBean pageBean, CEES_UserVO cees_userVO) {
        return cees_userManager.pageQuery(pageBean, cees_userVO);
    }

    @Override
    public void delete(Integer id) {
        cees_userManager.delete(id);
    }

    @Override
    public void update(CEES_UserVO ceesUserVO) {
        cees_userManager.update(ceesUserVO);
    }

    @Override
    public void insert(CEES_UserVO ceesUserVO) {
        cees_userManager.insert(ceesUserVO);
    }

    @Override
    public Integer getMaxSn() {
        return cees_userManager.getMaxSn();
    }
}
