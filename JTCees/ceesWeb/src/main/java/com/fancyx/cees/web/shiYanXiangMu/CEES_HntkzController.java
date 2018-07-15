package com.fancyx.cees.web.shiYanXiangMu;



import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.CEES_HntkzDBUtil;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Hntkz;
import com.fancyx.cees.domain.vo.CEES_HntkzVo;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.CEES_HntkzService;
import com.fancyx.cees.service.busi.Display_HntkzService;
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
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * 混凝土抗折页面
 * Created by 啊Q on 2018-06-23.
 */

@Controller
@RequestMapping(value = "/shiYanXiangMu/Hntkz")
public class CEES_HntkzController {
    private static final Logger log = Logger.getLogger(CEES_HntkzController.class);

    @Resource
    private CEES_HntkzService cees_hntkzService;

    @Resource
    private Display_HntkzService display_hntkzService;

    @Autowired
    private CEES_HntkzDBUtil ceesHntkzServiceDBUtil;

    /*
    * 返回混凝土抗压页面
    * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/shiYanXiangMu/CEES_Hntkz";
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
            return new ResultBean(display_hntkzService.selectAll());
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean<>(ex);
        }
    }


    /**
     * 分页查询
     *
     * @param cees_hntkzVo
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(CEES_HntkzVo cees_hntkzVo,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<CEES_Hntkz>(page, pageSize);
            PageBean<CEES_Hntkz> result = cees_hntkzService.pageQuery(pageBean, cees_hntkzVo);
            return new PageResultBean(result.getUnderly(), result.getItemCount());
        } catch (Exception ex) {
            log.error("查询异常", ex);
            return new PageResultBean(ex);
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
            cees_hntkzService.delete(id);
            return new ResultBean();
        } catch (Exception e) {
            log.error("删除异常", e);
            return new ResultBean(e);
        }
    }

    /**
     * 更新混凝土抗压
     *
     * @param cees_hntkzVo
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(CEES_HntkzVo cees_hntkzVo) {

        try {
            cees_hntkzService.update(cees_hntkzVo);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("修改异常", ex);
            return new ResultBean(ex);
        }
    }

    /**
     * 添加混凝土抗压
     *
     * @param cees_hntkzVo
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HttpSession session, CEES_HntkzVo  cees_hntkzVo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);
            if (sessionVO == null) {
                throw new Exception("请重新登录！");
            }

            //用户
            cees_hntkzVo.setEdituser(sessionVO.getCees_user().getLoginuser());
            //状态
            cees_hntkzVo.setState("录入");
            //时间
            cees_hntkzVo.setEdittime(TimeUtil.getCurrentTime());
            //sn_project
            cees_hntkzVo.setSn_project(ceesHntkzServiceDBUtil.getSnProject());
            //cnumber
            cees_hntkzVo.setCnumber(ceesHntkzServiceDBUtil.getCnumber());
            //projectnumber
            cees_hntkzVo.setProjectnumber(ceesHntkzServiceDBUtil.getProjectnumber());
            //kynumber
            cees_hntkzVo.setKznumber(ceesHntkzServiceDBUtil.getKznumber());
            //client
            cees_hntkzVo.setClient(sessionVO.getCees_construction().getClient());

            cees_hntkzService.insert(cees_hntkzVo);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("添加异常", ex);
            return new ResultBean(ex);
        }
    }



    //将字符串转换为Date类
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        //注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }
}
