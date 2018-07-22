package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.manager.busi.Display_SNJJManager;
import com.fancyx.cees.service.busi.Display_SNJJService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-22.
 */
@Service
public class Display_SNJJServiceImpl implements Display_SNJJService {

    @Autowired
    private Display_SNJJManager manager;

    @Override
    public List selectAll() {
        return manager.selectAll();
    }
}
