package com.fancyx.cees.web.shiYanXiangMu;


import com.fancyx.cees.common.PageResultBean;
import com.fancyx.cees.common.ResultBean;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.service.busi.Display_HntkyService;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;


/**
 * 混凝土抗压页面
 * Created by 啊Q on 2018-05-02.
 */

@Controller
@RequestMapping(value = "/shiYanXiangMu/hunNIngTuKangYa")
public class HunNingTuKangYaController {
    private static final Logger log = Logger.getLogger(HunNingTuKangYaController.class);

    @Resource
    private HunNingTuKangYaService hunNingTuKangYaService;

    @Resource
    private Display_HntkyService display_hntkyService;

    /*
    * 返回混凝土抗压页面
    * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/shiYanXiangMu/hunNingTukangYa";
    }


    /**
     * 返回所有列
     *
     * @return
     */
    @RequestMapping(value = "/getShowCol.action")
    @ResponseBody
    public ResultBean getShowCol() {

        try {
            return new ResultBean<>(display_hntkyService.selectAll());
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean<>(ex);
        }
    }

    /**
     * 分页查询混凝土抗压
     *
     * @param hunNingTuKangYaDTO
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(HunNingTuKangYaDTO hunNingTuKangYaDTO,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<HunNingTuKangYa>(page, pageSize);
            PageBean<HunNingTuKangYa> result = hunNingTuKangYaService.pageQuery(pageBean, hunNingTuKangYaDTO);
            return  new PageResultBean(result.getUnderly(),result.getItemCount());
        } catch (Exception ex) {
            log.error("混凝土抗压分页查询异常", ex);
            return new PageResultBean(ex);
        }
    }
}
