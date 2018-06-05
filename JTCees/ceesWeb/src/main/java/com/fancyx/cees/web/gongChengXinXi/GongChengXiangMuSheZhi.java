package com.fancyx.cees.web.gongChengXinXi;

import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.ProjectDbUtil;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.busi.CEES_User;
import com.fancyx.cees.domain.vo.CEES_ProjectVo;
import com.fancyx.cees.domain.vo.CEES_UserVO;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.service.busi.CEES_ProjectService;
import com.fancyx.cees.service.busi.Display_ProjectService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by 啊Q on 2018-05-30.
 */
@Controller
@RequestMapping(value = "/gongChengXinXi/GongChengXiangMuSheZhi")
public class GongChengXiangMuSheZhi {
    private static final Logger log = Logger.getLogger(GongChengXiangMuSheZhi.class);

    @Autowired
    private CEES_ProjectService cees_projectService;

    @Autowired
    private Display_ProjectService display_projectService;

    @Autowired
    private ProjectDbUtil projectDbUtil;


    /*
   * 返回页面
   * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/gongChengXinXi/GongChengXiangMuSheZhi";
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
            return new ResultBean(display_projectService.selectAll());
        } catch (Exception ex) {
            ex.printStackTrace();
            return new ResultBean<>(ex);
        }
    }


    /**
     * 分页查询
     *
     * @param cees_projectVo
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public PageResultBean search(CEES_ProjectVo cees_projectVo,
                                 @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                 @RequestParam(value = "limit", required = false, defaultValue = "10") int pageSize) {

        try {
            PageBean pageBean = new PageBean<CEES_User>(page, pageSize);
            PageBean<CEES_Project> result = cees_projectService.pageQuery(pageBean, cees_projectVo);
            return new PageResultBean(result.getUnderly(), result.getItemCount());
        } catch (Exception ex) {
            log.error("分页查询异常", ex);
            return new PageResultBean(ex);
        }
    }

    /**
     * 更新
     *
     * @param cees_projectVo
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(HttpSession session, CEES_ProjectVo cees_projectVo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SessionKey);
            cees_projectVo.setEdituser(sessionVO.getCees_user().getLoginuser());
            cees_projectVo.setEdittime(TimeUtil.getCurrentTime());

            cees_projectService.update(cees_projectVo);
            return new ResultBean();
        } catch (Exception ex) {
            log.error("修改异常", ex);
            return new ResultBean(ex);
        }
    }


    /**
     * 添加
     *
     * @param cees_projectVo
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HttpSession session, CEES_ProjectVo cees_projectVo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SessionKey);
            cees_projectVo.setPid(projectDbUtil.getPid());
            cees_projectVo.setEdituser(sessionVO.getCees_user().getLoginuser());
            cees_projectVo.setEdittime(TimeUtil.getCurrentTime());
            cees_projectVo.setSn(projectDbUtil.getSn());

            cees_projectService.insert(cees_projectVo);
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
            cees_projectService.delete(id);
            return new ResultBean();
        } catch (Exception e) {
            log.error("删除异常", e);
            return new ResultBean(e);
        }
    }


}
