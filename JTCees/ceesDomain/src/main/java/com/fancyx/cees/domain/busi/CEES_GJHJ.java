package com.fancyx.cees.domain.busi;

import java.util.Date;

/**
 * Created by 啊Q on 2018-07-19.
 */
public class CEES_GJHJ {

    //钢筋焊接id
    private  int  gjhjid;
    //施工单位id
    private  int  cid;
    //施工单位编号
    private  String  cnumber;
    //工程项目id
    private  int  pid;
    //工程编号
    private  String  projectnumber;
    //送检人(委托人)
    private  String  client;
    //钢筋焊接编号
    private  String  gjhjnumber;
    //送检编号
    private  String  testnumber;
    //序号
    private  int  sn;
    //工程明细序号/工程抗压序号
    private  int  sn_project;
    //送检单明细序号/提交序号
    private  int  sn_test;
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
    //委托单编号
    private  String  WTDBH;
    //委托单位名称
    private  String  WTDWMC;
    //钢筋种类
    private  String  GJZL;
    //钢筋产地
    private  String  GJCD;
    //来样日期
    private  Date  LYRQ;
    //试验编号
    private  String  SYBH;
    //工程名称
    private  String  GCMC;
    //代表焊接数量
    private  String  DBHJSL;
    //部位
    private  String  YT;
    //试验日期
    private  Date  SYRQ;
    //试验仪器编号
    private  String  YQBH;
    //牌号
    private  String  PH;
    //级别
    private  String  JB;
    //规格
    private  String  GG;
    //规格1
    private  String  GG1;
    //横截面积
    private  String  HJMJ;
    //横截面积1
    private  String  HJMJ1;
    //焊接类型及接头方式
    private  String  HJLX;
    //原材试验编号
    private  String  YCLSYBH;
    //焊条型号
    private  String  HTXH;
    //焊接人
    private  String  HJR;
    //试件编号1
    private  String  SJBH1;
    //试件编号2
    private  String  SJBH2;
    //试件编号3
    private  String  SJBH3;
    //试件编号4
    private  String  SJBH4;
    //试件编号5
    private  String  SJBH5;
    //试件编号6
    private  String  SJBH6;
    //拉力1
    private  String  LL1;
    //拉力2
    private  String  LL2;
    //拉力3
    private  String  LL3;
    //拉力4
    private  String  LL4;
    //拉力5
    private  String  LL5;
    //拉力6
    private  String  LL6;
    //强度1
    private  String  QD1;
    //强度2
    private  String  QD2;
    //强度3
    private  String  QD3;
    //强度4
    private  String  QD4;
    //强度5
    private  String  QD5;
    //强度6
    private  String  QD6;
    //变形或断裂位置1
    private  String  BXHDLWZ1;
    //变形或断裂位置2
    private  String  BXHDLWZ2;
    //变形或断裂位置3
    private  String  BXHDLWZ3;
    //变形或断裂位置4
    private  String  BXHDLWZ4;
    //变形或断裂位置5
    private  String  BXHDLWZ5;
    //变形或断裂位置6
    private  String  BXHDLWZ6;
    //弯曲直径1
    private  String  WXZJ1;
    //弯曲直径2
    private  String  WXZJ2;
    //弯曲直径3
    private  String  WXZJ3;
    //弯曲直径4
    private  String  WXZJ4;
    //弯曲直径5
    private  String  WXZJ5;
    //弯曲直径6
    private  String  WXZJ6;
    //角度1
    private  String  JD1;
    //角度2
    private  String  JD2;
    //角度3
    private  String  JD3;
    //角度4
    private  String  JD4;
    //角度5
    private  String  JD5;
    //角度6
    private  String  JD6;
    //评定1
    private  String  PD1;
    //评定2
    private  String  PD2;
    //评定3
    private  String  PD3;
    //评定4
    private  String  PD4;
    //评定5
    private  String  PD5;
    //评定6
    private  String  PD6;
    //结论
    private  String  JL;
    //备注
    private  String  BZ;
    //校核人
    private  String  XHR;
    //试验人
    private  String  SYR;
    //单位代码
    private  int  DWDM;
    //试验项目代码
    private  String  SYXMDM;
    //试验项目名称
    private  String  SYXMMC;
    //试样编号
    private  String  SHIYBH;
    //试验名称
    private  String  SYMC;
    //委托单位编号
    private  String  WTDWBH;
    //工程编号
    private  String  GCBH;
    //技术负责人编号
    private  int  JSFZRBH;
    //技术负责人
    private  String  JSFZR;
    //校核人编号
    private  int  XHRBH;
    //校核备注
    private  String  XHBZ;
    //校核意见
    private  String  XHYJ;
    //签发备注
    private  String  QFBZ;
    //签发意见
    private  String  QFYJ;
    //试验人编号
    private  int  SYRBH;
    //报告日期
    private Date BGRQ;
    //执行规程
    private  String  ZXGC;
    //执行标准
    private  String  ZXBZ;
    //试验委托人
    private  String  SYWTR;
    //见证标志
    private  String  JZBZ;
    //合格标志
    private  String  HGBZ;
    //试验结果
    private  String  SYJG;
    //处理意见
    private  String  CLYJ;
    //委托组号
    private  int  WTZH;
    //记录表编号
    private  String  JLBBH;
    //报告表编号
    private  String  BGBBH;
    private  String  HJ1;
    private  String  HJ2;

    public int getGjhjid() {
        return gjhjid;
    }

    public void setGjhjid(int gjhjid) {
        this.gjhjid = gjhjid;
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

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getGjhjnumber() {
        return gjhjnumber;
    }

    public void setGjhjnumber(String gjhjnumber) {
        this.gjhjnumber = gjhjnumber;
    }

    public String getTestnumber() {
        return testnumber;
    }

    public void setTestnumber(String testnumber) {
        this.testnumber = testnumber;
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

    public int getSn_test() {
        return sn_test;
    }

    public void setSn_test(int sn_test) {
        this.sn_test = sn_test;
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

    public String getWTDBH() {
        return WTDBH;
    }

    public void setWTDBH(String WTDBH) {
        this.WTDBH = WTDBH;
    }

    public String getWTDWMC() {
        return WTDWMC;
    }

    public void setWTDWMC(String WTDWMC) {
        this.WTDWMC = WTDWMC;
    }

    public String getGJZL() {
        return GJZL;
    }

    public void setGJZL(String GJZL) {
        this.GJZL = GJZL;
    }

    public String getGJCD() {
        return GJCD;
    }

    public void setGJCD(String GJCD) {
        this.GJCD = GJCD;
    }
}
