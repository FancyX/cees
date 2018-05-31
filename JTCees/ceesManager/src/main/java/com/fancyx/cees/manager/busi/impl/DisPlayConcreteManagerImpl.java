package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.DisPlay_ConcreteDao;
import com.fancyx.cees.domain.busi.Display_Concrete;
import com.fancyx.cees.manager.busi.DisPlayConcreteManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-29.
 */
@Service
public class DisPlayConcreteManagerImpl implements DisPlayConcreteManager {

    @Autowired
    private DisPlay_ConcreteDao disPlayConcreteDao;

    @Override
    public List<Display_Concrete> selectAll() {
        return disPlayConcreteDao.selectAll();
    }
}
