package com.fancyx.cees.web.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 混凝土抗压页面
 * Created by 啊Q on 2018-05-02.
 */

@Controller
@RequestMapping(value = "/hunNingTuKangYa")
public class HunNingTuKangYaController {
    private static final Logger log = Logger.getLogger(HunNingTuKangYaController.class);


    @Resource
    private HunNingTuKangYaService hunNingTuKangYaService;

    @RequestMapping(value = "/index")
    public String index() {
        return "busi/hunNingtukangYa/hunNingtukangYa_index";
    }

    /**
     * 加载货架规格
     *
     * @param shelfSpecification
     * @param page
     * @param pageSize
     * @param model
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public Model search(HunNingTuKangYa shelfSpecification,
                        @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                        @RequestParam(value = "rows", required = false, defaultValue = "10") int pageSize,
                        Model model) {
        try {
            PageBean pageBean = new PageBean<HunNingTuKangYa>(page, pageSize);
            PageBean<HunNingTuKangYa> result = hunNingTuKangYaService.pageQuery(pageBean, shelfSpecification);

            model.addAttribute("rows", result.getUnderly());
            model.addAttribute("total", result.getItemCount());
        } catch (Exception e) {
            log.error("查询货架类型异常", e);
        }
        return model;
    }
}
