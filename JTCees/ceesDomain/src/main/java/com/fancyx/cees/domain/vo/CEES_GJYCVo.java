package com.fancyx.cees.domain.vo;

import com.fancyx.cees.domain.busi.CEES_GJYC;

/**
 * Created by 啊Q on 2018-07-16.
 */
public class CEES_GJYCVo extends CEES_GJYC {

    //查询字符串
    String queryStr;
    //查询数字
    String queryIntStr;

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
}
