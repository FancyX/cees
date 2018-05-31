package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_Project;
import com.fancyx.cees.manager.busi.Display_ProjectManager;
import com.fancyx.cees.service.busi.Display_ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-30.
 */
@Service
public class Display_ProjectServiceImpl implements Display_ProjectService {

    @Autowired
    private Display_ProjectManager display_projectManager;

    @Override
    public List<Display_Project> selectAll() {
        return display_projectManager.selectAll();
    }
}
