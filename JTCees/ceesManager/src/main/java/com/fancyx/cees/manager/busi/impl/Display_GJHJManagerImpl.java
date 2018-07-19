package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_GJHJDao;
import com.fancyx.cees.domain.busi.Display_GJHJ;
import com.fancyx.cees.manager.busi.Display_GJHJManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-19.
 */
@Service
public class Display_GJHJManagerImpl implements Display_GJHJManager {

    @Autowired
    private Display_GJHJDao dao;

    @Override
    public List<Display_GJHJ> selectAll() {
        return dao.selectAll();
    }
}
