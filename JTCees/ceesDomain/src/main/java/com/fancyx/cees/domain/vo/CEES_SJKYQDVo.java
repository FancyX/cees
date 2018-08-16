package com.fancyx.cees.domain.vo;

import com.fancyx.cees.domain.busi.CEES_SJKYQD;

/**
 * Created by 啊Q on 2018-07-14.
 */
public class CEES_SJKYQDVo extends CEES_SJKYQD {

    //查询字符串
    String queryStr;
    //查询数字
    String queryIntStr;

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

    public String getQueryIntStr() {
        return queryIntStr;
    }

    public void setQueryIntStr(String queryIntStr) {

        try {
            Integer.parseInt(queryIntStr);
            this.queryIntStr = queryIntStr;
        } catch (Exception e) {

        }
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
