package com.fancyx.cees.web.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.common.ResultBean;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * 混凝土抗压页面
 * Created by 啊Q on 2018-05-02.
 */

@Controller
@RequestMapping(value = "/hunNingTuKangYa")
public class HunNingTuKangYaController_ {
    private static final Logger log = Logger.getLogger(HunNingTuKangYaController_.class);

    @Resource
    private HunNingTuKangYaService hunNingTuKangYaService;

    @RequestMapping(value = "/index")
    public String index() {
        //return "busi/hunNingtukangYa/hunNingtukangYa_index";
        return "busi/hntky/hntky_index";
    }


    /**
     * 分页查询混凝土抗压
     *
     * @param hunNingTuKangYaDTO
     * @param page
     * @param pageSize
     * @param model
     * @return
     */
    @RequestMapping(value = "/search")
    @ResponseBody
    public Model search(HunNingTuKangYaDTO hunNingTuKangYaDTO,
                        @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                        @RequestParam(value = "rows", required = false, defaultValue = "10") int pageSize,
                        Model model) {
        try {
            PageBean pageBean = new PageBean<HunNingTuKangYa>(page, pageSize);
            PageBean<HunNingTuKangYa> result = hunNingTuKangYaService.pageQuery(pageBean, hunNingTuKangYaDTO);

            model.addAttribute("rows", result.getUnderly());
            model.addAttribute("total", result.getItemCount());
        } catch (Exception e) {
            log.error("查询货架类型异常", e);
        }
        return model;
    }


    /**
     * 添加一条混凝土抗压
     *
     * @param hunNingTuKangYa
     * @return 返回ResultBean类型的结果说明
     */
    @ResponseBody
    @RequestMapping(value = "/add")
    public ResultBean add(HttpSession session, HunNingTuKangYa hunNingTuKangYa) {

        //施工单位id
        int cId = 1;
        hunNingTuKangYa.setCid(cId);
        //施工单位编号
        String cnumber = "12312";
        hunNingTuKangYa.setCnumber(cnumber);
        //送检人
        String client = "暂时送检人";
        hunNingTuKangYa.setClient(client);
        //试块收到日期
        Date SKSDRQ = new Date("1992-8-8");
        hunNingTuKangYa.setSKSDRQ(SKSDRQ);
        //要求试验日期
        Date YQSYRQ = new Date("1992-8-8");
        hunNingTuKangYa.setYQSYRQ(YQSYRQ);
        //试验日期
        Date SYRQ = new Date("1992-8-8");
        hunNingTuKangYa.setSYRQ(SYRQ);
        //受压面积
        String SYMJ = "10000";
        hunNingTuKangYa.setSYMJ(SYMJ);
        //单块1
        String HZ1 = "";
        hunNingTuKangYa.setHZ1(HZ1);
        //单块2
        String HZ2 = "";
        hunNingTuKangYa.setHZ1(HZ2);
        //单块3
        String HZ3 = "";
        hunNingTuKangYa.setHZ1(HZ3);
        //单块平均
        String HZPJ = "";
        hunNingTuKangYa.setHZPJ(HZPJ);
        //抗压强度
        String KYQD = "";
        hunNingTuKangYa.setKYQD(KYQD);
        //折合强度
        String ZHQD = "";
        hunNingTuKangYa.setZHQD(ZHQD);
        //达到强度
        String DDQD = "";
        hunNingTuKangYa.setDDQD(DDQD);
        //技术负责人编号
        int JSFZRBH = 1;
        hunNingTuKangYa.setJSFZRBH(JSFZRBH);
        //技术负责人
        String JSFZR = "";
        hunNingTuKangYa.setJSFZR(JSFZR);
        //校核人编号
        int XHRBH = 1;
        hunNingTuKangYa.setXHRBH(XHRBH);
        //校核人
        String XHR = "";
        hunNingTuKangYa.setXHR(XHR);

        //试验人编号
        int SYRBH = 1;
        hunNingTuKangYa.setSYRBH(SYRBH);
        //试验人
        String SYR = "";
        hunNingTuKangYa.setSYR(SYR);
        //报告日期
        Date BGRQ = new Date("1992-8-8");
        hunNingTuKangYa.setBGRQ(BGRQ);


        return hunNingTuKangYaService.insert(hunNingTuKangYa);
    }


    //todo 暂时返回各种一些字段的类型基本信息，
    @ResponseBody
    @RequestMapping(value = "/getBaseInfo")
    public Map getBaseInfo()  {
        Map map = new HashMap();
        //设计强度
        List<String> sheJiQiangDu = new ArrayList<String>();

        for (int i = 10; i < 101; ) {
            sheJiQiangDu.add("c" + String.valueOf(i));
            i += 5;
        }
        map.put("sheJiQiangDu", sheJiQiangDu);
        //水泥品种
        List<String> shuiNiPinZhong = new ArrayList<String>();
        shuiNiPinZhong.add("P.O");
        shuiNiPinZhong.add("P.S");
        shuiNiPinZhong.add("P.F");
        shuiNiPinZhong.add("P.P");
        shuiNiPinZhong.add("P.Ⅰ");//todo - 罗马数字
        shuiNiPinZhong.add("P.Ⅱ");//todo - 罗马数字
        map.put("shuiNiPinZhong", shuiNiPinZhong);
        //水泥标号
        List<String> shuiNiBiaoHao = new ArrayList<String>();
        shuiNiBiaoHao.add("32.5");
        shuiNiBiaoHao.add("32.5R");
        shuiNiBiaoHao.add("42.5");
        shuiNiBiaoHao.add("42.5R");
        shuiNiBiaoHao.add("52.5");
        shuiNiBiaoHao.add("52.5R");
        shuiNiBiaoHao.add("62.5");
        shuiNiBiaoHao.add("62.5R");
        map.put("shuiNiBiaoHao", shuiNiBiaoHao);
        //砂子品种
        List<String> shaZiPinZhong = new ArrayList<String>();
        shaZiPinZhong.add("粗砂");
        shaZiPinZhong.add("中砂");
        shaZiPinZhong.add("细砂");
        shaZiPinZhong.add("河砂");
        map.put("shaZiPinZhong", shaZiPinZhong);
        //石子品种
        List<String> shiZiPinZhong = new ArrayList<String>();
        shiZiPinZhong.add("碎石");
        shiZiPinZhong.add("碎卵石");
        shiZiPinZhong.add("卵碎石");
        shiZiPinZhong.add("卵石");
        shiZiPinZhong.add("豆石");
        shiZiPinZhong.add("细石");
        map.put("shiZiPinZhong", shiZiPinZhong);
        //粉煤灰品种
        List<String> fenMeiHuiPinZhong = new ArrayList<String>();
        fenMeiHuiPinZhong.add("粉煤灰");
        map.put("fenMeiHuiPinZhong", fenMeiHuiPinZhong);
        //掺合料名称
        List<String> chanHeLiaoMingCheng = new ArrayList<String>();
        chanHeLiaoMingCheng.add("硅粉");
        chanHeLiaoMingCheng.add("矿粉");
        map.put("chanHeLiaoMingCheng", chanHeLiaoMingCheng);
        //外加剂名称
        List<String> waiJiaJiMingCheng = new ArrayList<String>();
        waiJiaJiMingCheng.add("减水剂");
        waiJiaJiMingCheng.add("防冻剂");
        waiJiaJiMingCheng.add("泵水剂");
        map.put("waiJiaJiMingCheng", waiJiaJiMingCheng);
        //外加剂2名称
        List<String> waiJiaJi2MingCheng = new ArrayList<String>();
        waiJiaJi2MingCheng.add("UEA");
        map.put("waiJiaJi2MingCheng", waiJiaJi2MingCheng);
        //最大粒径
        List<String> zuiDaLiJing = new ArrayList<String>();
        zuiDaLiJing.add("16");
        zuiDaLiJing.add("25");
        map.put("zuiDaLiJing", zuiDaLiJing);

        return map;
    }

}
