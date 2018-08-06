package com.fancyx.cees.web.shiYanXiangMu;


import com.fancyx.cees.baseBeans.PageResultBean;
import com.fancyx.cees.baseBeans.ResultBean;
import com.fancyx.cees.common.HunNingKuKangYaDBUtil;
import com.fancyx.cees.common.TimeUtil;
import com.fancyx.cees.config.BaseConfig;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.vo.HunNingTuKangYaVO;
import com.fancyx.cees.domain.vo.SessionVO;
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
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * 混凝土抗压页面
 * Created by 啊Q on 2018-05-02.
 */

@Controller
@RequestMapping(value = "/shiYanXiangMu/hunNingTuKangYa")
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
    public PageResultBean search(HunNingTuKangYaVO hunNingTuKangYaDTO,
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
     * @param vo
     * @return
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public ResultBean add(HttpSession session, HunNingTuKangYaVO vo) {

        try {
            SessionVO sessionVO = (SessionVO) session.getAttribute(BaseConfig.SESSION_KEY);
            if (sessionVO == null) {
                throw new Exception("请重新登录！");
            }
//
            vo.setPid(sessionVO.getCees_project().getPid());
            vo.setReadmark(0);
            vo.setSn_test(0);
            vo.setDWDM(0);
            //设置Cid
            vo.setCid(sessionVO.getCees_construction().getCid());
            //委托单位名称-施工单位名称
            vo.setWTDWMC(sessionVO.getCees_construction().getConstruction());
//            vo.setWTDWBH();
//            vo.setGCBH();
//            vo.setGCMC();//
//            vo.setHNTDW();//
//            vo.setZMRQ();//
//            vo.setYQLQ();
//            vo.setYQSYRQ();
//            vo.setSKYHTJ();
//            vo.setSYWTR()
//            vo.setSYRQ();
//            vo.setSJLQ();
//            vo.setSJCC();
//            vo.setSYMJ();
            vo.setJSFZRBH(0);
            vo.setXHRBH(0);
//            vo.setSYRBH();
//            vo.setWTZH(0);

            //用户
            vo.setEdituser(sessionVO.getCees_user().getLoginuser());
            //状态
            vo.setState("录入");
            //时间
            vo.setEdittime(TimeUtil.getCurrentTime());
            //sn
            vo.setSn(hunNingKuKangYaDBUtil.getSn());
            //sn_project
            vo.setSn_project(hunNingKuKangYaDBUtil.getSnProject());
            //cnumber
            vo.setCnumber(hunNingKuKangYaDBUtil.getCnumber());
            //projectnumber
            vo.setProjectnumber(hunNingKuKangYaDBUtil.getProjectnumber());
            //kynumber
            vo.setKynumber(hunNingKuKangYaDBUtil.getKynumber());
            //client
            vo.setClient(sessionVO.getCees_construction().getClient());

            hunNingTuKangYaService.insert(vo);
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
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }
}
