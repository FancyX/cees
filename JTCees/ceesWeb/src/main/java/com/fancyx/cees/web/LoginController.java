package com.fancyx.cees.web;

import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.domain.vo.CEES_UserVO;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.CEES_ProjectService;
import com.fancyx.cees.service.busi.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * 登录
 * Created by 啊Q on 2018-05-19.
 */
@Controller
public class LoginController {

    @Resource
    private LoginService loginService;

    @Resource
    private CEES_ProjectService cees_projectService;

    /*
    * 登录
    * 将用户，施工单位以及工程封装到SessionVO对象并放入session中
    * */
    @RequestMapping(value = "/login")
    @ResponseBody
    public ResultBean page(HttpSession session, CEES_UserVO userVO) {

        try {
            SessionVO sessionVO = loginService.login(userVO);
            session.setAttribute(BaseConfig.SessionKey, sessionVO);
            return new ResultBean();
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean(ex);
        }
    }

    /*
    * 获取所有工程信息
    * */
    @RequestMapping(value = "/getAllProject")
    @ResponseBody
    public ResultBean getAllProject() {

        try {
            return new ResultBean<>(cees_projectService.getAllProject());
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean(ex);
        }
    }
}
