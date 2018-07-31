package com.fancyx.cees.domain.vo;

import com.fancyx.cees.domain.busi.HunNingTuKangYa;

/**
 * Created by 啊Q on 2018-05-22.
 */
public class HunNingTuKangYaVO extends HunNingTuKangYa {



    //查询字符串
    String queryStr;

    //制模日期开始
    private String zmrqstart;
    //制模日期结束
    private String zmrqend;

    public String getQueryStr() {
        return queryStr;
    }

    public void setQueryStr(String queryStr) {
        this.queryStr = queryStr;
    }

    public String getZmrqstart() {
        return zmrqstart;
    }

    public void setZmrqstart(String zmrqstart) {
        this.zmrqstart = zmrqstart;
    }

    public String getZmrqend() {
        return zmrqend;
    }

    public void setZmrqend(String zmrqend) {
        this.zmrqend = zmrqend;
    }
}
