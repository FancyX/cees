package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_Hntkz;
import com.fancyx.cees.manager.busi.Display_HntkzManager;
import com.fancyx.cees.service.busi.Display_HntkzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-06-25.
 */
@Service
public class Display_HntkzServiceImpl implements Display_HntkzService {

    @Autowired
    private Display_HntkzManager display_hntkzManager;

    @Override
    public List<Display_Hntkz> selectAll() {
        return display_hntkzManager.selectAll();
    }
}
