package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_LQMXE;
import com.fancyx.cees.manager.busi.Display_LQMXEManager;
import com.fancyx.cees.service.busi.Display_LQMXEService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-21.
 */
@Service
public class Display_LQMXEServiceImpl implements Display_LQMXEService {

    @Autowired
    private Display_LQMXEManager manager;

    @Override
    public List<Display_LQMXE> selectAll() {
        return manager.selectAll();
    }
}
