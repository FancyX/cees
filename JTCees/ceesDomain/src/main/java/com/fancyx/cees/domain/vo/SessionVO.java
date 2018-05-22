package com.fancyx.cees.domain.vo;

import com.fancyx.cees.domain.busi.CEES_Concrete;
import com.fancyx.cees.domain.busi.CEES_Construction;
import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.busi.CEES_User;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-20.
 */
public class SessionVO implements Serializable {


    private CEES_User cees_user;//储存用户信息
    private CEES_Construction cees_construction;//储存施工单位信息
    private CEES_Project cees_project;//储存工程信息

    public CEES_User getCees_user() {
        return cees_user;
    }

    public void setCees_user(CEES_User cees_user) {
        this.cees_user = cees_user;
    }

    public CEES_Construction getCees_construction() {
        return cees_construction;
    }

    public void setCees_construction(CEES_Construction cees_construction) {
        this.cees_construction = cees_construction;
    }

    public CEES_Project getCees_project() {
        return cees_project;
    }

    public void setCees_project(CEES_Project cees_project) {
        this.cees_project = cees_project;
    }

}
