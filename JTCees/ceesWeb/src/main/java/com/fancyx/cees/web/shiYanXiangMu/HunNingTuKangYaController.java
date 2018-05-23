package com.fancyx.cees.web.shiYanXiangMu;


import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.HunNingKuKangYaDBUtil;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.vo.HunNingTuKangYaVO;
import com.fancyx.cees.service.busi.Display_HntkyService;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


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

    @Autowired
    private HunNingKuKangYaDBUtil hunNingKuKangYaDBUtil;

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
            return new PageResultBean(result.getUnderly(), result.getItemCount());
        } catch (Exception ex) {
            log.error("混凝土抗压分页查询异常", ex);
            return new PageResultBean(ex);
        }
    }


    /**
     * 删除混凝土抗压
     *
     * @param kyid
     * @return
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public ResultBean delete(Integer kyid) {
        System.out.println("kyid = " + kyid);
        try {
            hunNingTuKangYaService.delete(kyid);
            return new ResultBean();
        } catch (Exception e) {
            log.error("混凝土抗压删除异常", e);
            return new ResultBean(e);
        }
    }

    /**
     * 更新混凝土抗压
     *
     * @param hunNingTuKangYaVO
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(HunNingTuKangYaVO hunNingTuKangYaVO) {

        try {
            hunNingTuKangYaService.update(hunNingTuKangYaVO);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("混凝土抗压修改异常", ex);
            return new ResultBean(ex);
        }
    }

    /**
     * 添加混凝土抗压
     *
     * @param hunNingTuKangYaVO
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HunNingTuKangYaVO hunNingTuKangYaVO) {

        try {
            hunNingTuKangYaVO.setSn_project(hunNingKuKangYaDBUtil.getSn_project());
            hunNingTuKangYaService.insert(hunNingTuKangYaVO);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("混凝土抗压添加异常", ex);
            return new ResultBean(ex);
        }
    }

//    @DateTimeFormat(pattern = "yyyy-HH-dd")

    //     将字符串转换为Date类
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }
}
