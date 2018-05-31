package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_Concrete;
import com.fancyx.cees.manager.busi.DisPlayConcreteManager;
import com.fancyx.cees.service.busi.DisPlayConcreteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-29.
 */
@Service
public class DisPlayConcreteServiceImpl implements DisPlayConcreteService {

    @Autowired
    private DisPlayConcreteManager disPlayConcreteManager;

    @Override
    public List<Display_Concrete> selectAll() {
        return disPlayConcreteManager.selectAll();
    }
}
