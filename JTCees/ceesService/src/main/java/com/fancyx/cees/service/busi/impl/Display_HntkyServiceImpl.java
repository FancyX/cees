package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.Display_Hntky;
import com.fancyx.cees.manager.busi.Display_HntkyManager;
import com.fancyx.cees.service.busi.Display_HntkyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-14.
 */
@Service
public class Display_HntkyServiceImpl implements Display_HntkyService {

    @Resource
    private Display_HntkyManager hntkyDaoManager;

    @Override
    public List<Display_Hntky> selectAll() {
        return hntkyDaoManager.selectAll();
    }
}
