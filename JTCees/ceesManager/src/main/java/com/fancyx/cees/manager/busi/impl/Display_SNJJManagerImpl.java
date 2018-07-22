package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_SNJJDao;
import com.fancyx.cees.manager.busi.Display_SNJJManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-22.
 */
@Service
public class Display_SNJJManagerImpl implements Display_SNJJManager {

    @Autowired
    private Display_SNJJDao dao;

    @Override
    public List selectAll() {
        return dao.selectAll();
    }
}
