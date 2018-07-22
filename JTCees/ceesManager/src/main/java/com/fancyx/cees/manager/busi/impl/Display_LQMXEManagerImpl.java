package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_LQMXEDao;
import com.fancyx.cees.domain.busi.Display_LQMXE;
import com.fancyx.cees.manager.busi.Display_LQMXEManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-21.
 */
@Service
public class Display_LQMXEManagerImpl implements Display_LQMXEManager {

    @Autowired
    private Display_LQMXEDao dao;

    @Override
    public List<Display_LQMXE> selectAll() {
        return dao.selectAll();
    }
}
