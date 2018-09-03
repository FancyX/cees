package com.fancyx.cees.manager.busi.impl;


import com.fancyx.cees.dao.busi.Display_TestDao;
import com.fancyx.cees.manager.busi.Display_TestManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Display_TestManagerImpl implements Display_TestManager {

    @Autowired
    private Display_TestDao dao;

    @Override
    public List selectAll() {
        return dao.selectAll();
    }
}
