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
import com.fancyx.cees.service.busi.CEESConcreteService;
import com.fancyx.cees.service.busi.Display_HntkyService;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.apache.commons.lang.StringUtils;
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

    //混凝土单位
    @Resource
    private CEESConcreteService ceesConcreteService;

    @Autowired
    private HunNingKuKangYaDBUtil hunNingKuKangYaDBUtil;

    /*
     * 返回混凝土抗压页面
     * */
    @RequestMapping(value = "/page")
    public String page() {
        return "cees/shiYanXiangMu/hunNingTukangYa3";
    }


    /**
     * 返回所有列d
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
            log.error("查询异常", ex);
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
        try {
            hunNingTuKangYaService.delete(kyid);
            return new ResultBean();
        } catch (Exception e) {
            log.error("混凝土抗压删除异常", e);
            return new ResultBean(e);
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

            //设置未读标志
            vo.setReadmark(0);
            //设置测试值
            vo.setSn_test(0);
            //单位代码
            vo.setDWDM(0);
            //技术负责人编号
            vo.setJSFZRBH(0);
            //校核人编号
            vo.setXHRBH(0);
            //试验人编号
            vo.setSYRBH(0);
            //委托组号
            vo.setWTZH(0);

            //设置Cid-施工单位ID
            vo.setCid(sessionVO.getCees_construction().getCid());
            //委托单位名称-施工单位名称
            vo.setWTDWMC(sessionVO.getCees_construction().getConstruction());
            //表CEES_Construction;字段cnumber
            vo.setWTDWBH(sessionVO.getCees_construction().getCnumber());

            //cees_project 表 pid 字段 工程编号
            vo.setPid(sessionVO.getCees_project().getPid());
            //cees_project 表 projectNumber 字段 工程编号
            vo.setGCBH(sessionVO.getCees_project().getProjectnumber());
            //cees_project 表 project 字段 工程名称
            vo.setGCMC(sessionVO.getCees_project().getProject());

            //表：CEES_User；字段：name - 试验委托人
            vo.setSYWTR(sessionVO.getCees_user().getName());

            //设置试件尺寸
            vo = setSJCC(vo);
            //设置龄期
            vo = setLQ(vo);
            //表：CEES_Concrete；字段：concrete - 混凝土单位名称
            vo.setHNTDW(ceesConcreteService.getConcrete(vo.getCcid()).getConcrete());

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
            Exception e = new Exception("添加异常");
            log.error("混凝土抗压添加异常", ex);
            return new ResultBean(e);
        }
    }


    /**
     * 更新混凝土抗压
     *
     * @param vo
     * @return
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public ResultBean update(HunNingTuKangYaVO vo) {
        try {
            //设置试件尺寸
            vo = setSJCC(vo);
            //设置龄期
            vo = setLQ(vo);
            //表：CEES_Concrete；字段：concrete - 混凝土单位名称
            vo.setHNTDW(ceesConcreteService.getConcrete(vo.getCcid()).getConcrete());

            hunNingTuKangYaService.update(vo);
            return new ResultBean();
        } catch (Exception ex) {
            ex.printStackTrace();
            Exception e = new Exception("修改错误！", ex);
            log.error("修改错误", e);
            return new ResultBean(e);
        }
    }

    //     将字符串转换为Date类
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        //注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }

    //设置龄期
    private HunNingTuKangYaVO setLQ(HunNingTuKangYaVO vo) {

        try {
            int yqlq = Integer.parseInt(vo.getYQLQ());
            if (vo.getZMRQ() != null && yqlq > 0) {
                Date newTime = TimeUtil.getNewTime(vo.getZMRQ(), yqlq);
                vo.setYQSYRQ(newTime);
                vo.setSYRQ(newTime);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return vo;
    }

    //设置试件尺寸
    private HunNingTuKangYaVO setSJCC(HunNingTuKangYaVO vo) {
        try {
            if (StringUtils.isNotBlank(vo.getSJCC())) {
                Integer sjcc = Integer.parseInt(vo.getSJCC());
                String symj = Integer.toString(sjcc * sjcc);
                vo.setSYMJ(symj);
            }
        } catch (Exception e) {

        }
        return vo;
    }
}
