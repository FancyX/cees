package com.fancyx.cees.web;

import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.domain.vo.BaseDataVO;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class IndexController {

    @Resource
    private IndexService indexService;


    @RequestMapping(value = "/index")
    public String index() {
        return "index";
    }


    @RequestMapping(value = "/getBaseData")
    @ResponseBody
    public ResultBean getBaseData(HttpSession session ) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);

            return new ResultBean<BaseDataVO>(indexService.getBaseData(sessionVO));
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean(ex);
        }
    }

}
