package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.manager.busi.Display_WCXKYManager;
import com.fancyx.cees.service.busi.Display_WCXKYService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Display_WCXKYServiceImpl implements Display_WCXKYService {

    @Autowired
    private Display_WCXKYManager manager;

    @Override
    public List selectAll() {
        return manager.selectAll() ;
    }
}
