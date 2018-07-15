package com.fancyx.cees.web.danWeiXinXi;

import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.CEESConcreteDBUtil;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.vo.CEES_ConcreteVo;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.CEESConcreteService;
import com.fancyx.cees.service.busi.DisPlayConcreteService;
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
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 啊Q on 2018-05-19.
 */
@Controller
@RequestMapping(value = "/danWeiXinXi/HunNingTuDanWei")
public class HunNingTuDanWeiController {
    private static final Logger log = Logger.getLogger(HunNingTuDanWeiController.class);


    @Resource
    private CEESConcreteService cees_concreteService;
    @Resource
    private DisPlayConcreteService disPlayConcreteService;
    @Resource
    private CEESConcreteDBUtil ceesConcreteDBUtil;

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

    /*
    * 返回页面
    * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/danWeiXinXi/hunNingTuDanWei";
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
            return new ResultBean(disPlayConcreteService.selectAll());
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean<>(ex);
        }
    }



    /**
     * 分页查询
     *
     * @param cees_concreteVo
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(CEES_ConcreteVo cees_concreteVo,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<CEES_ConcreteVo>(page, pageSize);
            PageBean<CEES_ConcreteVo> result = cees_concreteService.pageQuery(pageBean, cees_concreteVo);
            return new PageResultBean(result.getUnderly(), result.getItemCount());
        } catch (Exception ex) {
            log.error("分页查询异常", ex);
            return new PageResultBean(ex);
        }
    }

    /**
     * 更新
     *
     * @param cees_concreteVo
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(HttpSession session, CEES_ConcreteVo cees_concreteVo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);
            cees_concreteVo.setEdituser(sessionVO.getCees_user().getLoginuser());
            cees_concreteVo.setEdittime(TimeUtil.getCurrentTime());
            cees_concreteService.update(cees_concreteVo);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("修改异常", ex);
            return new ResultBean(ex);
        }
    }
    /**
     * 添加
     *
     * @param cees_concreteVo
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HttpSession session, CEES_ConcreteVo cees_concreteVo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);
            cees_concreteVo.setCcid(ceesConcreteDBUtil.getCcid());
            cees_concreteVo.setEdituser(sessionVO.getCees_user().getLoginuser());
            cees_concreteVo.setEdittime(TimeUtil.getCurrentTime());
            cees_concreteVo.setSn(ceesConcreteDBUtil.getSn());
            cees_concreteService.insert(cees_concreteVo);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("添加异常", ex);
            return new ResultBean(ex);
        }
    }


    /**
     * 删除
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public ResultBean delete(Integer id) {
        try {
            cees_concreteService.delete(id);
            return new ResultBean();
        } catch (Exception e) {
            log.error("删除异常", e);
            return new ResultBean(e);
        }
    }

    //将字符串转换为Date类
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm");
//        注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }
}
