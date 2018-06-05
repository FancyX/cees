package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_ProjectDao;
import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.vo.CEES_ProjectVo;
import com.fancyx.cees.domain.vo.LoginQueryProjectVo;
import com.fancyx.cees.manager.busi.CEES_ProjectManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
@Service
public class CEES_ProjectManagerImpl implements CEES_ProjectManager {

    @Resource
    private CEES_ProjectDao cees_projectDao;

    @Override
    public CEES_Project getProject( LoginQueryProjectVo loginQueryProjectVo ) {
        return cees_projectDao.getProject(loginQueryProjectVo);
    }

    @Override
    public List<CEES_Project> getAllProject() {
        return cees_projectDao.getAllProject();
    }

    @Override
    public PageBean<CEES_Project> pageQuery(PageBean pageBean, CEES_ProjectVo cees_projectVo) {
        return cees_projectDao.pageQuery( pageBean,  cees_projectVo);
    }

    @Override
    public void update(CEES_ProjectVo cees_projectVo) {
        cees_projectDao.update( cees_projectVo);
    }

    @Override
    public Integer getMaxSn() {
        return cees_projectDao.getMaxSn();
    }

    @Override
    public void insert(CEES_ProjectVo cees_projectVo) {
        cees_projectDao.insert( cees_projectVo);
    }

    @Override
    public void delete(Integer id) {
        cees_projectDao . delete( id);
    }

    @Override
    public int getMaxPid()  {
        return cees_projectDao.getMaxPid();
    }
}
