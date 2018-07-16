package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_GJYC;
import com.fancyx.cees.manager.busi.Display_GJYCManager;
import com.fancyx.cees.service.busi.Display_GJYCService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-16.
 */
@Service
public class Display_GJYCServiceImpl implements Display_GJYCService {

    @Autowired
    private Display_GJYCManager manager;

    @Override
    public List<Display_GJYC> selectAll() {
        return manager.selectAll();
    }
}
