package com.fancyx.cees.web.busi;

import com.fancyx.cees.dao.PageBean;;
import com.fancyx.cees.service.busi.HntkyService;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fancyx.cees.domain.busi.Hntky;
import javax.annotation.Resource;


@Controller
@RequestMapping(value = "/hntky")
class HNTKYController {
    private static final Logger log = Logger.getLogger(HNTKYController.class);


    @Resource
    private HntkyService hntkyService;
    @Resource
    private HunNingTuKangYaService hunNingTuKangYaService;

    @RequestMapping(value = "/index")
    public String index(){
        return "busi/hntky/hntky_index";
    }
    /**
     * 加载货架规格
     * @param hntky
     * @param page
     * @param pageSize
     * @param model
     * @return
     */
    @RequestMapping(value = "/search",method = RequestMethod.POST)
    @ResponseBody
    public Model search(Hntky hntky, @RequestParam(value = "page", required = false, defaultValue = "1") int page, @RequestParam(value = "rows", required = false, defaultValue = "10") int pageSize, Model model){
        try {
            PageBean pageBean = new PageBean<Hntky>(page, pageSize);
            PageBean<Hntky> result = hntkyService.pageQuery(pageBean,hntky);
            System.out.println("result = " + result);
            model.addAttribute("rows", result.getUnderly());
            model.addAttribute("total", result.getItemCount());
        }catch (Exception e){
            log.error("查询货架类型异常",e);
        }

        return model;
    }
}
