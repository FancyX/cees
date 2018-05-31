package com.fancyx.cees.service.busi.impl;


import com.fancyx.cees.domain.busi.Display_Construction;
import com.fancyx.cees.manager.busi.DisplayConstructionManager;
import com.fancyx.cees.service.busi.DisplayConstructionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-26.
 */
@Service
public class DisplayConstructionServiceImpl implements DisplayConstructionService {


    @Autowired
    private DisplayConstructionManager displayConstructionManager;

    @Override
    public List<Display_Construction> selectAll() {
        return displayConstructionManager.selectAll();
    }
}
