package com.fancyx.cees.domain.busi;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-05.
 */
public class CEES_Project  implements Serializable {

    private static final long serialVersionUID = 1L;

    //工程项目id
    private  int  pid;
    //施工单位id
    private  int  cid;
    //序号
    private  int  sn;
    //分类
    private  String  classification;
    //工程编号
    private  String  projectnumber;
    //工程名称
    private  String  project;
    //工程简称
    private  String  projectsimple;
    //建设单位id
    private  int  bid;
    //地址
    private  String  address;
    //电话
    private  String  tel;
    //状态
    private  int  state;
    //备注
    private  String  remarks;
    //编辑时间
    private  String  edittime;
    //用户名
    private  String  edituser;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
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

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public String getProjectnumber() {
        return projectnumber;
    }

    public void setProjectnumber(String projectnumber) {
        this.projectnumber = projectnumber;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getProjectsimple() {
        return projectsimple;
    }

    public void setProjectsimple(String projectsimple) {
        this.projectsimple = projectsimple;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
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
