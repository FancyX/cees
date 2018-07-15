package com.fancyx.cees.baseBeans;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-14.
 */
public class ResultBean<T> implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 返回的信息(主要出错的时候使用)
     */
    private String msg = "成功！";

    /**
     * 接口返回码, 0表示成功, 其他看对应的定义
     * 晓风轻推荐的做法是:
     * 0   : 成功
     * >0 : 表示已知的异常(例如提示错误等, 需要调用地方单独处理)
     * <0 : 表示未知的异常(不需要单独处理, 调用方统一处理)
     */
    private int code = ResultErrNo.SUCCESS;

    /**
     * 返回的数据
     */
    private T data;

    public ResultBean() {
        super();
    }

    public ResultBean(T data) {
        super();
        this.data = data;
    }

    public ResultBean(Throwable e) {
        super();
        this.msg = e.getMessage();
        this.code = ResultErrNo.UNKNOWN_EXCEPTION;
    }

    public ResultBean(Throwable e,Integer errNo) {
        super();
        this.msg = e.toString();
        this.code = errNo;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
