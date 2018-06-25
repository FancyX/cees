package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_HntkzDao;
import com.fancyx.cees.domain.busi.CEES_Hntkz;
import com.fancyx.cees.domain.vo.CEES_HntkzVo;
import com.fancyx.cees.manager.busi.CEES_HntkzManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 啊Q on 2018-06-25.
 */
@Service
public class CEES_HntkzManagerImpl implements CEES_HntkzManager {


    @Autowired
    private CEES_HntkzDao cees_hntkzDao;

    @Override
    public PageBean<CEES_Hntkz> pageQuery(PageBean pageBean, CEES_HntkzVo cees_hntkzVo) {
        return cees_hntkzDao.pageQuery( pageBean, cees_hntkzVo) ;
    }

    @Override
    public void delete(Integer id) {
        cees_hntkzDao.delete(id);
    }

    @Override
    public void update(CEES_HntkzVo cees_hntkzVo) {
        cees_hntkzDao.update(cees_hntkzVo);
    }
}
