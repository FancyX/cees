package com.fancyx.cees.domain.vo;

import com.fancyx.cees.domain.busi.CEES_Concrete;

import java.io.Serializable;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
public class BaseDataVO extends SessionVO implements Serializable {

    private List<CEES_Concrete> cees_concreteList;

    public BaseDataVO(SessionVO sessionVO) {

        this.setCees_user(sessionVO.getCees_user());//储存用户信息
        this.setCees_construction(sessionVO.getCees_construction());//储存施工单位信息
        this.setCees_project(sessionVO.getCees_project());//储存工程信息
    }

    public List<CEES_Concrete> getCees_concreteList() {
        return cees_concreteList;
    }

    public void setCees_concreteList(List<CEES_Concrete> cees_concreteList) {
        this.cees_concreteList = cees_concreteList;
    }
}
