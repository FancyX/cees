package com.fancyx.cees.web.shiYanXiangMu;


import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.CEES_GJYCDBUtil;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_GJYC;
import com.fancyx.cees.domain.vo.CEES_GJYCVo;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.CEES_GJYCService;
import com.fancyx.cees.service.busi.Display_GJYCService;
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
import java.util.List;

/**
 * 钢筋原材
 * Created by 啊Q on 2018-07-16.
 */

@Controller
@RequestMapping(value = "/shiYanXiangMu/GJYC")
public class CEES_GJYCController {

    private static final Logger log = Logger.getLogger(CEES_GJYCController.class);

    @Resource
    private CEES_GJYCService cees;

    @Resource
    private Display_GJYCService diplay;

    @Autowired
    private CEES_GJYCDBUtil dbUtil;


    /*
    * 返回页面
    * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/shiYanXiangMu/CEES_GJYC";
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
            return new ResultBean<List>(diplay.selectAll());
        } catch (Exception ex) {
            ex.printStackTrace();
            Exception exception = new Exception("获取列异常",ex);
            return new ResultBean<>(exception);
        }
    }



    /**
     * 分页查询
     *
     * @param cees_gjycVo
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(CEES_GJYCVo cees_gjycVo,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<CEES_GJYC>(page, pageSize);
            PageBean<CEES_GJYC> result = cees.pageQuery(pageBean, cees_gjycVo);
            return new PageResultBean(result.getUnderly(), result.getItemCount());
        } catch (Exception ex) {
            log.error(ex);
            Exception exception = new Exception("查询异常",ex);
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
            cees.delete(id);
            return new ResultBean();
        } catch (Exception e) {
            Exception exception = new Exception("删除异常", e);
            log.error(exception);
            return new ResultBean(exception);
        }
    }

    /**
     * 更新
     *
     * @param vo
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(CEES_GJYCVo vo) {

        try {
            cees.update(vo);
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
     * @param cees_gjycVo
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HttpSession session, CEES_GJYCVo cees_gjycVo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);
            if (sessionVO == null) {
                throw new Exception("请重新登录！");
            }

            //用户
            cees_gjycVo.setEdituser(sessionVO.getCees_user().getLoginuser());
            //状态
            cees_gjycVo.setState("录入");
            //时间
            cees_gjycVo.setEdittime(TimeUtil.getCurrentTime());
            //sn_project
            cees_gjycVo.setSn_project(dbUtil.getSn_project());
            //cnumber
            cees_gjycVo.setCnumber(dbUtil.getCnumber());
            //projectnumber
            cees_gjycVo.setProjectnumber(dbUtil.getProjectnumber());
            //kynumber
            cees_gjycVo.setGjycnumber(dbUtil.getGjycnumber());
            //client
            cees_gjycVo.setClient(sessionVO.getCees_construction().getClient());

            cees.insert(cees_gjycVo);
            return new ResultBean();
        } catch (Exception ex) {
            Exception exception = new Exception("添加异常", ex);
            log.error(exception);
            ex.printStackTrace();
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
