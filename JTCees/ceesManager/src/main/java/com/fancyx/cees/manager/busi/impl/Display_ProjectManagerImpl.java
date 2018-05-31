package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_ProjectDao;
import com.fancyx.cees.domain.busi.Display_Project;
import com.fancyx.cees.manager.busi.Display_ProjectManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-30.
 */
@Service
public class Display_ProjectManagerImpl implements Display_ProjectManager {

    @Autowired
    private Display_ProjectDao display_projectDao;

    @Override
    public List<Display_Project> selectAll() {
        return display_projectDao.selectAll();
    }
}
