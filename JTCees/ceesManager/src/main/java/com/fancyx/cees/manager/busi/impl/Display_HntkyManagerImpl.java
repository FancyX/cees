package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.Display_HntkyDao;
import com.fancyx.cees.domain.busi.Display_Hntky;
import com.fancyx.cees.manager.busi.Display_HntkyManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-14.
 */
@Service
public class Display_HntkyManagerImpl implements Display_HntkyManager {

    @Resource
    private Display_HntkyDao display_hntkyDao;

    @Override
    public List<Display_Hntky> selectAll() {
        return display_hntkyDao.selectAll();
    }
}
