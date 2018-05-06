package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.common.ResultBean;
import com.fancyx.cees.manager.busi.HunNingTuKangYaManager;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class HunNingTuKangYaServiceImpl implements HunNingTuKangYaService {
    @Resource
    private HunNingTuKangYaManager manager;

    @Override
    public PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaDTO hntky) {
        return manager.pageQuery(pageBean, hntky);
    }


    //todo - 处理异常的方式是单次捕捉，还是设置一个异常处理器
    @Override
    public ResultBean insert(HunNingTuKangYa hunNingTuKangYa) {

        try {
            manager.insert(hunNingTuKangYa);
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean(ex);
        }
        return new ResultBean();
    }
}
