package com.fancyx.cees.manager.busi.impl;

import com.fancyx.cees.dao.busi.CEES_ProjectDao;
import com.fancyx.cees.domain.busi.CEES_Project;
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
}
