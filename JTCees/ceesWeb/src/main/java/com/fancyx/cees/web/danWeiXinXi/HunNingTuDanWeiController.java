package com.fancyx.cees.web.danWeiXinXi;

import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.service.busi.CEES_ConcreteService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by 啊Q on 2018-05-19.
 */
@Controller
@RequestMapping(value = "/danWeiXinXi/HunNingTuDanWei")
public class HunNingTuDanWeiController {

    @Resource
    private CEES_ConcreteService cees_concreteService;

    /**
     * 返回混凝土单位信息
     * @param constructionId 施工单位id
     * @return 返回通用返回值
     */
    @RequestMapping(value = "/selectByConstructionId")
    @ResponseBody
    public ResultBean selectByConstructionId(int constructionId) {

        try {
            return new ResultBean<>(cees_concreteService.selectByConstructionId(constructionId));
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean<>(ex);
        }

    }
}
