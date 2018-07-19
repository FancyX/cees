package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_GJHJ;
import com.fancyx.cees.manager.busi.Display_GJHJManager;
import com.fancyx.cees.service.busi.Display_GJHJService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-19.
 */
@Service
public class Display_GJHJServiceImpl implements Display_GJHJService {

    @Autowired
    private Display_GJHJManager manager;

    @Override
    public List<Display_GJHJ> selectAll() {
        return manager.selectAll();
    }
}
