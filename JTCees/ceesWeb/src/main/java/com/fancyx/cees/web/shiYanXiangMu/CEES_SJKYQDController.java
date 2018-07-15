package com.fancyx.cees.web.shiYanXiangMu;

import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.CEES_SJKYQDDBUtil;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_SJKYQD;
import com.fancyx.cees.domain.vo.CEES_SJKYQDVo;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.CEES_SJKYQDService;
import com.fancyx.cees.service.busi.Display_SJKYQDService;
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
 * 砂浆抗压controller
 * Created by 啊Q on 2018-07-14.
 */
@Controller
@RequestMapping(value = "/shiYanXiangMu/SJKYQD")
public class CEES_SJKYQDController {


    private static final Logger log = Logger.getLogger(CEES_SJKYQDController.class);

    @Resource
    private CEES_SJKYQDService cees_sjkyqdService;

    @Resource
    private Display_SJKYQDService display_sjkyqdService;

    @Autowired
    private CEES_SJKYQDDBUtil cees_sjkyqddbUtil;


    /*
    * 返回页面
    * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/shiYanXiangMu/CEES_SJKYQD";
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
            return new ResultBean(display_sjkyqdService.selectAll());
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean<>(ex);
        }
    }

    /**
     * 分页查询
     *
     * @param cees_sjkyqdVo
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(CEES_SJKYQDVo cees_sjkyqdVo,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<CEES_SJKYQDController>(page, pageSize);
            PageBean<CEES_SJKYQD> result = cees_sjkyqdService.pageQuery(pageBean, cees_sjkyqdVo);
            return new PageResultBean(result.getUnderly(), result.getItemCount());
        } catch (Exception ex) {
            Exception exception = new Exception("查询异常", ex);
            log.error(exception);
            return new PageResultBean(exception);
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
            cees_sjkyqdService.delete(id);
            return new ResultBean();
        } catch (Exception e) {
            Exception exception = new Exception("查询异常", e);
            log.error(exception);
            return new ResultBean(exception);
        }
    }

    /**
     * 更新
     *
     * @param cees_sjkyqdVo
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(CEES_SJKYQDVo cees_sjkyqdVo) {

        try {
            cees_sjkyqdService.update(cees_sjkyqdVo);
            return new ResultBean();
        } catch (Exception ex) {
            Exception exception = new Exception("修改异常", ex);
            log.error(exception);
            return new ResultBean(exception);
        }
    }


    /**
     * 添加
     *
     * @param cees_sjkyqdVo
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HttpSession session, CEES_SJKYQDVo cees_sjkyqdVo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);
            if (sessionVO == null) {
                throw new Exception("请重新登录！");
            }

            //用户
            cees_sjkyqdVo.setEdituser(sessionVO.getCees_user().getLoginuser());
            //状态
            cees_sjkyqdVo.setState("录入");
            //时间
            cees_sjkyqdVo.setEdittime(TimeUtil.getCurrentTime());
            //sn_project
            cees_sjkyqdVo.setSn_project(cees_sjkyqddbUtil.getSn_project());
            //cnumber
            cees_sjkyqdVo.setCnumber(cees_sjkyqddbUtil.getCnumber());
            //projectnumber
            cees_sjkyqdVo.setProjectnumber(cees_sjkyqddbUtil.getProjectnumber());
            //kynumber
            cees_sjkyqdVo.setSjkynumber(cees_sjkyqddbUtil.getSjkynumber());
            //client
            cees_sjkyqdVo.setClient(sessionVO.getCees_construction().getClient());

            cees_sjkyqdService.insert(cees_sjkyqdVo);
            return new ResultBean();
        } catch (Exception ex) {
            Exception exception = new Exception("添加异常", ex);
            log.error(exception);
            return new ResultBean(exception);
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
