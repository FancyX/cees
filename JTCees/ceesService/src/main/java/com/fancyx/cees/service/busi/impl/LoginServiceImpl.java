package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.CEES_Construction;
import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.busi.CEES_User;
import com.fancyx.cees.domain.vo.CEES_UserVO;
import com.fancyx.cees.domain.vo.LoginQueryProjectVo;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.manager.busi.CEES_ConstructionManager;
import com.fancyx.cees.manager.busi.CEES_ProjectManager;
import com.fancyx.cees.manager.busi.CEES_UserManager;
import com.fancyx.cees.service.busi.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by 啊Q on 2018-05-20.
 */
@Service
public class LoginServiceImpl implements LoginService {


    @Resource
    private CEES_UserManager cees_userManager;//用户

    @Resource
    private CEES_ConstructionManager cees_constructionManager;//施工单位

    @Resource
    private CEES_ProjectManager cees_projectManager;//工程

    @Override
    public SessionVO login(CEES_UserVO cees_userVO) throws Exception {

        //用户
        CEES_User cees_user = cees_userManager.login(cees_userVO);

        if (cees_user == null || cees_user.getUid() <= 0) {
            throw new Exception("登录失败,请检查用户名和密码！");
        }
        //施工单位
        CEES_Construction cees_construction = cees_constructionManager.getConstruction(cees_user.getCid());

        if (cees_construction == null || cees_construction.getCid() <= 0) {
            throw new Exception("登录失败！");
        }

        //工程
        LoginQueryProjectVo loginQueryProjectVo = new LoginQueryProjectVo();
        loginQueryProjectVo.setCid(cees_construction.getCid());
        loginQueryProjectVo.setPid(cees_userVO.getProjectId());
        CEES_Project cees_project = cees_projectManager.getProject(loginQueryProjectVo);

        if (cees_project == null || cees_project.getPid() <= 0) {
            throw new Exception("登录失败！");
        }

        //设置返回对象
        SessionVO sessionVO = new SessionVO();
        sessionVO.setCees_user(cees_user);
        sessionVO.setCees_construction(cees_construction);
        sessionVO.setCees_project(cees_project);
        return sessionVO;
    }




}
