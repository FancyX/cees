package com.fancyx.cees.web.yongHuDanWeiSheZhi;

import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.common.UserDbUtil;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_User;
import com.fancyx.cees.domain.vo.CEES_UserVO;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.DisplayUserService;
import com.fancyx.cees.service.busi.UserService;
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

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 啊Q on 2018-05-28.
 */
@Controller
@RequestMapping(value = "/yongHuDanWeiSheZhi/user")
public class UserController {
    private static final Logger log = Logger.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private DisplayUserService displayUserService;

    @Autowired
    private UserDbUtil userDbUtil;

    /*
    * 返回页面
    * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/yongHuDanWeiSheZhi/yongHuSheZhi";
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
            return new ResultBean(displayUserService.selectAll());
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean<>(ex);
        }
    }


    /**
     * 分页查询
     *
     * @param cees_userVO
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(CEES_UserVO cees_userVO,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<CEES_User>(page, pageSize);
            PageBean<CEES_User> result = userService.pageQuery(pageBean, cees_userVO);
            return new PageResultBean(result.getUnderly(), result.getItemCount());
        } catch (Exception ex) {
            log.error("分页查询异常", ex);
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
            userService.delete(id);
            return new ResultBean();
        } catch (Exception e) {
            log.error("删除异常", e);
            return new ResultBean(e);
        }
    }

    /**
     * 更新
     *
     * @param ceesUserVO
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(HttpSession session, CEES_UserVO ceesUserVO) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);
            ceesUserVO.setEdituser(sessionVO.getCees_user().getLoginuser());
            ceesUserVO.setEdittime(TimeUtil.getCurrentTime());
            userService.update(ceesUserVO);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("修改异常", ex);
            return new ResultBean(ex);
        }
    }

    /**
     * 添加
     *
     * @param ceesUserVO
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HttpSession session, CEES_UserVO ceesUserVO) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);

            ceesUserVO.setUid(userDbUtil.getUid());
            ceesUserVO.setEdituser(sessionVO.getCees_user().getLoginuser());
            ceesUserVO.setEdittime(TimeUtil.getCurrentTime());
            ceesUserVO.setSn(userDbUtil.getSn());
            userService.insert(ceesUserVO);
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
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm");
//        注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }

}
