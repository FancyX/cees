package com.fancyx.cees.web.shiYanXiangMu;

import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.CEES_GJHJDBUtil;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_GJHJ;
import com.fancyx.cees.domain.vo.CEES_GJHJVo;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.CEES_GJHJService;
import com.fancyx.cees.service.busi.Display_GJHJService;
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
 *
 * Created by 啊Q on 2018-07-19.
 */
@Controller
@RequestMapping(value = "/shiYanXiangMu/GJHJ")
public class CEES_GJHJController {
    private static final Logger log = Logger.getLogger(CEES_GJHJController.class);

    @Resource
    private CEES_GJHJService cees;

    @Resource
    private Display_GJHJService diplay;

    @Autowired
    private CEES_GJHJDBUtil dbUtil;

    /*
    * 返回页面
    * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/shiYanXiangMu/CEES_GJHJ";
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
     * @param vo
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(CEES_GJHJVo vo,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<CEES_GJHJ>(page, pageSize);
            PageBean<CEES_GJHJ> result = cees.pageQuery(pageBean, vo);
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
            Exception exception = new Exception("查询异常", e);
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
    public ResultBean update(CEES_GJHJVo vo) {

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
     * @param vo
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HttpSession session, CEES_GJHJVo vo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);
            if (sessionVO == null) {
                throw new Exception("请重新登录！");
            }

            //用户
            vo.setEdituser(sessionVO.getCees_user().getLoginuser());
            //状态
            vo.setState("录入");
            //时间
            vo.setEdittime(TimeUtil.getCurrentTime());
            //sn_project
            vo.setSn_project(dbUtil.getSn_project());
            //cnumber
            vo.setCnumber(dbUtil.getCnumber());
            //projectnumber
            vo.setProjectnumber(dbUtil.getProjectnumber());
            //kynumber
            vo.setGjhjnumber(dbUtil.getGjhjnumber());
            //client
            vo.setClient(sessionVO.getCees_construction().getClient());

            cees.insert(vo);
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
