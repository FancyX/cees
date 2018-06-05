package com.fancyx.cees.web.yongHuDanWeiSheZhi;


import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.CEESConstructionDBUtil;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Construction;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.vo.CEES_ConstructionVo;
import com.fancyx.cees.service.busi.CEESConstructionService;
import com.fancyx.cees.service.busi.DisplayConstructionService;
import org.apache.log4j.Logger;
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
import java.util.List;
import java.util.concurrent.TimeUnit;


/**
 * 混凝土抗压页面
 * Created by 啊Q on 2018-05-02.
 */

@Controller
@RequestMapping(value = "/yongHuDanWeiSheZhi/ShiGongDanWei")
public class ShiGongDanWeiController {
    private static final Logger log = Logger.getLogger(ShiGongDanWeiController.class);

    @Resource
    private CEESConstructionService ceesConstructionService;
    @Resource
    private DisplayConstructionService displayConstructionService;
    @Resource
    private CEESConstructionDBUtil ceesConstructionDBUtil;


    /*
    * 返回施工单位
    * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/yongHuDanWeiSheZhi/shiGongDanWei";
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
            return new ResultBean(displayConstructionService.selectAll());
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean<>(ex);
        }
    }

    /**
     * 分页查询-施工单位
     *
     * @param ceesConcreteVo
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(CEES_ConstructionVo ceesConcreteVo,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<CEES_Construction>(page, pageSize);
            PageBean<CEES_ConstructionVo> result = ceesConstructionService.pageQuery(pageBean, ceesConcreteVo);
            return new PageResultBean(result.getUnderly(), result.getItemCount());
        } catch (Exception ex) {
            log.error("施工单位分页查询异常", ex);
            return new PageResultBean(ex);
        }
    }



    /**
     * 获取所有施工单位
     *
     * @return
     */
    @RequestMapping(value = "/getAll")
    @ResponseBody
    public ResultBean getAll() {

        try {

            List<CEES_ConstructionVo> result = ceesConstructionService.getAll();
            return new ResultBean(result);
        } catch (Exception ex) {
            log.error("施工单位获取", ex);
            return new ResultBean(ex);
        }
    }


    /**
     * 删除-施工单位
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public ResultBean delete(Integer id) {
        try {
            ceesConstructionService.delete(id);
            return new ResultBean();
        } catch (Exception e) {
            log.error("施工单位删除异常", e);
            return new ResultBean(e);
        }
    }

    /**
     * 更新-施工单位
     *
     * @param ceesConcreteVo
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(CEES_ConstructionVo ceesConcreteVo) {

        try {
            ceesConstructionService.update(ceesConcreteVo);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("施工单位修改异常", ex);
            return new ResultBean(ex);
        }
    }

    /**
     * 添加-施工单位
     *
     * @param ceesConstructionVo
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(CEES_ConstructionVo ceesConstructionVo) {

        try {
            int sn = ceesConstructionDBUtil.getSn();
            ceesConstructionVo.setCid(ceesConstructionDBUtil.getCid());
            ceesConstructionVo.setSn(sn);

            ceesConstructionVo.setCnumber(ceesConstructionDBUtil.getCnumber());
            ceesConstructionVo.setEdituser("授权");
            ceesConstructionVo.setEdittime(TimeUtil.getCurrentTime());
            ceesConstructionService.insert(ceesConstructionVo);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("混凝土抗压添加异常", ex);
            return new ResultBean(ex);
        }
    }


    //     将字符串转换为Date类
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm");
//        注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }
}
