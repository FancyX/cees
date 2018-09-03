package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.manager.busi.Display_TestManager;
import com.fancyx.cees.service.busi.Display_TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Display_TestServiceImpl implements Display_TestService {


    @Autowired
    private Display_TestManager manager;

    @Override
    public List selectAll() {
        return manager.selectAll();
    }
}
