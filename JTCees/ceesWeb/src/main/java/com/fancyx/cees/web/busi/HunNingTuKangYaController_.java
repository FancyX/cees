package com.fancyx.cees.web.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

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
