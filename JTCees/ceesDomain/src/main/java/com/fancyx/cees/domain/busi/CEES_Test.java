package com.fancyx.cees.domain.busi;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-05.
 */
public class CEES_Test implements Serializable {

    private static final long serialVersionUID = 1L;

    //送检id
    private  int  tid;
    //施工单位id
    private  int  cid;
    //施工单位编号
    private  String  cnumber;
    //施工单位名称(委托单位)
    private  String  construction;
    //工程项目id
    private  int  pid;
    //工程编号
    private  String  projectnumber;
    //工程名称
    private  String  project;
    //送检人(委托人)
    private  String  client;
    //序号
    private  int  sn;
    //工程明细序号/工程提交序号
    private  int  sn_project;
    //送检编号/提交编号
    private  String  testnumber;
    //分类
    private  String  classification;
    //试验数量
    private  int  testcount;
    //单位
    private  String  testunit;
    //日期
    private  String  editdate;
    //送检文件/提交文件
    private  String  testfile;
    //委托金额/应付款
    private  float  payable;
    //已付款
    private  float  payment;
    //欠款
    private  float  arrears;
    //付款日期
    private  String  paydate;
    //产地来源
    private  String  CDLY;
    //用途说明
    private  String  YTSM;
    //试样描述
    private  String  SYMS;
    //加急
    private  int  urgent;
    //见证
    private  int  witness;
    //状态
    private  String  state;
    //备注
    private  String  remarks;
    //编辑时间
    private  String  edittime;
    //用户名
    private  String  edituser;
    //已读标志
    private  int  readmark;
    //已读时间
    private  String  readtime;

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
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

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
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

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public int getSn() {
        return sn;
    }

    public void setSn(int sn) {
        this.sn = sn;
    }

    public int getSn_project() {
        return sn_project;
    }

    public void setSn_project(int sn_project) {
        this.sn_project = sn_project;
    }

    public String getTestnumber() {
        return testnumber;
    }

    public void setTestnumber(String testnumber) {
        this.testnumber = testnumber;
    }

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public int getTestcount() {
        return testcount;
    }

    public void setTestcount(int testcount) {
        this.testcount = testcount;
    }

    public String getTestunit() {
        return testunit;
    }

    public void setTestunit(String testunit) {
        this.testunit = testunit;
    }

    public String getEditdate() {
        return editdate;
    }

    public void setEditdate(String editdate) {
        this.editdate = editdate;
    }

    public String getTestfile() {
        return testfile;
    }

    public void setTestfile(String testfile) {
        this.testfile = testfile;
    }

    public float getPayable() {
        return payable;
    }

    public void setPayable(float payable) {
        this.payable = payable;
    }

    public float getPayment() {
        return payment;
    }

    public void setPayment(float payment) {
        this.payment = payment;
    }

    public float getArrears() {
        return arrears;
    }

    public void setArrears(float arrears) {
        this.arrears = arrears;
    }

    public String getPaydate() {
        return paydate;
    }

    public void setPaydate(String paydate) {
        this.paydate = paydate;
    }

    public String getCDLY() {
        return CDLY;
    }

    public void setCDLY(String CDLY) {
        this.CDLY = CDLY;
    }

    public String getYTSM() {
        return YTSM;
    }

    public void setYTSM(String YTSM) {
        this.YTSM = YTSM;
    }

    public String getSYMS() {
        return SYMS;
    }

    public void setSYMS(String SYMS) {
        this.SYMS = SYMS;
    }

    public int getUrgent() {
        return urgent;
    }

    public void setUrgent(int urgent) {
        this.urgent = urgent;
    }

    public int getWitness() {
        return witness;
    }

    public void setWitness(int witness) {
        this.witness = witness;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
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

    public int getReadmark() {
        return readmark;
    }

    public void setReadmark(int readmark) {
        this.readmark = readmark;
    }

    public String getReadtime() {
        return readtime;
    }

    public void setReadtime(String readtime) {
        this.readtime = readtime;
    }
}
