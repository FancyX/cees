package com.fancyx.cees.domain.busi;

import com.fancyx.cees.domain.common.BaseQuery;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 啊Q on 2018-05-02.
 */
public class HunNingTuKangYaDTO extends BaseQuery implements Serializable{
    private static final long serialVersionUID = 1L;

    //工程编号
    private String projectnumber;
    //状态
    private String state;
    //制模日期开始
    private String zmrqstart;
    //制模日期结束
    private String zmrqend;

    public String getProjectnumber() {
        return projectnumber;
    }

    public void setProjectnumber(String projectnumber) {
        this.projectnumber = projectnumber;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
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
