package com.fancyx.cees.domain.vo;

import com.fancyx.cees.domain.busi.CEES_User;

/**
 * Created by 啊Q on 2018-05-19.
 */
public class CEES_UserVO extends CEES_User {

    //CEES_Project-工程ID需要在登录页面选择
    private int projectId;

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }
}
