package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_SJKYQDao;
import com.fancyx.cees.domain.busi.Display_SJKYQD;
import com.fancyx.cees.manager.busi.Display_SJKYQDManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-15.
 */
@Service
public class Display_SJKYQDManagerImpl implements Display_SJKYQDManager {


    @Autowired
    private Display_SJKYQDao sjkyqDao;

    @Override
    public List<Display_SJKYQD> selectAll() {
        return sjkyqDao.selectAll();
    }
}
