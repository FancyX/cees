package com.fancyx.cees.domain.busi;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-05.
 */
public class CEES_Concrete implements Serializable {

    private static final long serialVersionUID = 1L;

    //混凝土单位id
    private int ccid;
    //施工单位id
    private int cid;
    //序号
    private int sn;
    //混凝土单位名称
    private String concrete;
    //地址
    private String address;
    //电话
    private String tel;
    //状态
    private int state;
    //备注
    private String remarks;
    //编辑时间
    private String edittime;
    //用户名
    private String edituser;

    public int getCcid() {
        return ccid;
    }

    public void setCcid(int ccid) {
        this.ccid = ccid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getSn() {
        return sn;
    }

    public void setSn(int sn) {
        this.sn = sn;
    }

    public String getConcrete() {
        return concrete;
    }

    public void setConcrete(String concrete) {
        this.concrete = concrete;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getEdittime() {
        return edittime;
    }

    public void setEdittime(String edittime) {
        this.edittime = edittime;
    }

    public String getEdituser() {
        return edituser;
    }

    public void setEdituser(String edituser) {
        this.edituser = edituser;
    }
}
