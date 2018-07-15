package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_SJKYQD;
import com.fancyx.cees.manager.busi.Display_SJKYQDManager;
import com.fancyx.cees.service.busi.Display_SJKYQDService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-14.
 */
@Service
public class Display_SJKYQDServiceImpl implements Display_SJKYQDService {


    @Autowired
    private Display_SJKYQDManager sjkyqdManager;

    @Override
    public List<Display_SJKYQD> selectAll() {
        return sjkyqdManager.selectAll();
    }
}
