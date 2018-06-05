package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.vo.CEES_ProjectVo;
import com.fancyx.cees.domain.vo.LoginQueryProjectVo;
import com.fancyx.cees.manager.busi.CEES_ProjectManager;
import com.fancyx.cees.service.busi.CEES_ProjectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
@Service
public class CEES_ProjectServiceImpl implements CEES_ProjectService {

    @Resource
    private CEES_ProjectManager cees_projectManager;

    @Override
    public CEES_Project getProject(LoginQueryProjectVo loginQueryProjectVo) {
        return cees_projectManager.getProject(loginQueryProjectVo);
    }

    @Override
    public List<CEES_Project> getAllProject() {
        return cees_projectManager.getAllProject();
    }

    @Override
    public PageBean<CEES_Project> pageQuery(PageBean pageBean, CEES_ProjectVo cees_projectVo) {
        return cees_projectManager.pageQuery(pageBean, cees_projectVo);
    }

    @Override
    public void update(CEES_ProjectVo cees_projectVo) {
        cees_projectManager.update(cees_projectVo);
    }

    @Override
    public Integer getMaxSn() {
        return cees_projectManager.getMaxSn();
    }

    @Override
    public void insert(CEES_ProjectVo cees_projectVo) {
        cees_projectManager.insert(cees_projectVo);
    }

    @Override
    public void delete(Integer id) {
        cees_projectManager.delete(id);
    }

    @Override
    public int getMaxPid() {
        return cees_projectManager.getMaxPid();
    }
}
