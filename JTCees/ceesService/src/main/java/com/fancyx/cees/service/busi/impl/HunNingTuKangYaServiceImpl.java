package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.vo.HunNingTuKangYaVO;
import com.fancyx.cees.manager.busi.HunNingTuKangYaManager;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class HunNingTuKangYaServiceImpl implements HunNingTuKangYaService {
    @Resource
    private HunNingTuKangYaManager manager;

    @Override
    public PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaVO hntky) {
        return manager.pageQuery(pageBean, hntky);
    }


    //todo - 处理异常的方式是单次捕捉，还是设置一个异常处理器
    @Override
    public boolean insert(HunNingTuKangYa hunNingTuKangYa) {

        manager.insert(hunNingTuKangYa);
        return true;
    }

    @Override
    public void delete(Integer id) {
        manager.delete(id);
    }

    @Override
    public void update(HunNingTuKangYaVO hunNingTuKangYaVO) {
        manager.update(hunNingTuKangYaVO);
    }

    @Override
    public Integer getMax_sn_project() {
        return manager.getMax_sn_project();
    }

    @Override
    public Integer getCnumber() {
        return manager.getCnumber() ;
    }

    @Override
    public Integer getProjectnumber() {
        return manager.getProjectnumber();
    }

    @Override
    public String getKynumber() {
        return manager.getKynumber();
    }

    @Override
    public Integer getMaxSn() {
        return manager.getMaxSn();
    }


}
