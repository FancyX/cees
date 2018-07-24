package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_WCXKYDao;
import com.fancyx.cees.manager.busi.Display_WCXKYManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Display_WCXKYManagerImpl implements Display_WCXKYManager {

    @Autowired
    private Display_WCXKYDao dao;

    @Override
    public List selectAll() {
        return dao.selectAll();
    }
}
