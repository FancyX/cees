package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_HntkzDao;
import com.fancyx.cees.domain.busi.Display_Hntkz;
import com.fancyx.cees.manager.busi.Display_HntkzManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-06-25.
 */
@Service
public class Display_HntkzManagerImpl implements Display_HntkzManager {

    @Autowired
    private Display_HntkzDao display_hntkzDao;

    @Override
    public List<Display_Hntkz> selectAll() {
        return display_hntkzDao.selectAll();
    }
}
