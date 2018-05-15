package com.fancyx.cees.common;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-14.
 */
public class PageResultBean<T> {


    private int code = ResultErrNo.SUCCESS;
    private String msg = ResultErrNo.SUCCESS_MSG;
    private int count = 0;
    private List<T> data;


    public PageResultBean(List<T> data, int count) {
        super();
        this.data = data;
        this.count = count;
    }

    public PageResultBean(Throwable e) {
        super();
        this.msg = e.toString();
        this.code = ResultErrNo.UNKNOWN_EXCEPTION;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
