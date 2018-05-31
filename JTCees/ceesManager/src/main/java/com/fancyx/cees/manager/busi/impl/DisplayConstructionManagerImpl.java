package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_ConstructionDao;
import com.fancyx.cees.domain.busi.Display_Construction;
import com.fancyx.cees.manager.busi.DisplayConstructionManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-26.
 */
@Service
public class DisplayConstructionManagerImpl implements DisplayConstructionManager {

    @Autowired
    private Display_ConstructionDao display_constructionDao;

    @Override
    public List<Display_Construction> selectAll() {
        return display_constructionDao.selectAll();
    }
}
