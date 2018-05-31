package com.fancyx.cees.domain.busi;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-05.
 */
public class CEES_Construction implements Serializable {

    private static final long serialVersionUID = 1L;

    //施工单位id
    private int cid;
    //序号
    private int sn;
    //施工单位编号
    private String cnumber;
    //施工单位名称(委托单位)
    private String construction;
    //地址
    private String address;
    //送检人(委托人)
    private String client;
    //电话
    private String tel;
    //授权编号
    private String anumber;
    //角色
    private String part = "施工单位";
    //状态
    private boolean state;
    //备注
    private String remarks;
    //编辑时间
    private String edittime;
    //用户名
    private String edituser;

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

    public String getCnumber() {
        return cnumber;
    }

    public void setCnumber(String cnumber) {
        this.cnumber = cnumber;
    }

    public String getConstruction() {
        return construction;
    }

    public void setConstruction(String construction) {
        this.construction = construction;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAnumber() {
        return anumber;
    }

    public void setAnumber(String anumber) {
        this.anumber = anumber;
    }

    public String getPart() {
        return part;
    }

    public void setPart(String part) {
        this.part = part;
    }

    public boolean getState() {
        return state;
    }

    public void setState(boolean state) {
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
