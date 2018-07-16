package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_GJYCDao;
import com.fancyx.cees.domain.busi.Display_GJYC;
import com.fancyx.cees.manager.busi.Display_GJYCManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-16.
 */
@Service
public class Display_GJYCManagerImpl implements Display_GJYCManager {


    @Autowired
    private Display_GJYCDao dao;

    @Override
    public List<Display_GJYC> selectAll() {
        return dao.selectAll();
    }
}
