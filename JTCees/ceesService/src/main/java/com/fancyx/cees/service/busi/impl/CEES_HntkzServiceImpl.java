package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Hntkz;
import com.fancyx.cees.domain.vo.CEES_HntkzVo;
import com.fancyx.cees.manager.busi.CEES_HntkzManager;
import com.fancyx.cees.service.busi.CEES_HntkzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-06-23.
 */
@Service
public class CEES_HntkzServiceImpl implements CEES_HntkzService {

    @Autowired
    private CEES_HntkzManager cees_hntkzManager;

    @Override
    public PageBean<CEES_Hntkz> pageQuery(PageBean pageBean, CEES_HntkzVo cees_hntkzVo) {
        return cees_hntkzManager.pageQuery(pageBean, cees_hntkzVo);
    }

    @Override
    public void delete(Integer id) {
        cees_hntkzManager.delete(id);
    }

    @Override
    public void update(CEES_HntkzVo cees_hntkzVo) {
        cees_hntkzManager.update(cees_hntkzVo);
    }

    @Override
    public Integer getMax_sn_project() {
        return cees_hntkzManager.getMax_sn_project();
    }

    @Override
    public int getCnumber() {
        return cees_hntkzManager.getCnumber();
    }

    @Override
    public int getProjectnumber() {
        return cees_hntkzManager.getProjectnumber();
    }

    @Override
    public String getKznumber() {
        return cees_hntkzManager.getKznumber();
    }

    @Override
    public void insert(CEES_HntkzVo cees_hntkzVo) {
        cees_hntkzManager.insert(cees_hntkzVo);
    }
}
