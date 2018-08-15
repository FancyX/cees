package com.fancyx.cees.domain.busi;

import com.fancyx.cees.CustomDateSerializer;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 啊Q on 2018-07-14.
 */
public class CEES_SJKYQD  implements Serializable {

    //砂浆抗压id
    private int sjkyid;
    //施工单位id
    private int cid;
    //施工单位编号
    private String cnumber;
    //工程项目id
    private int pid;
    //工程编号
    private String projectnumber;
    //送检人(委托人)
    private String client;
    //混凝土单位id
    private int ccid;
    //砂浆抗压编号
    private String sjkynumber;
    //送检编号
    private String testnumber;
    //序号
    private int sn;
    //工程明细序号/工程抗压序号
    private int sn_project;
    //送检单明细序号/提交序号
    private int sn_test;
    //状态
    private String state;
    //备注
    private String remarks;
    //编辑时间
    private String edittime;
    //用户名
    private String edituser;
    //已读标志
    private int readmark;
    //已读时间
    private String readtime;
    //委托单编号
    private String WTDBH;
    //委托单位名称
    private String WTDWMC;
    //来样日期
    private Date LYRQ;
    //工程名称
    private String GCMC;
    //试验编号
    private String SYBH;
    //试验日期
    private Date SYRQ;
    //施工部位
    private String SGBW;
    //委托人
    private String WTR;
    //砂浆种类
    private String SJZL;
    //砂浆种类强度
    private String SJZLQD;
    //稠度
    private String CD;
    //稠度单位
    private String CDDW;
    //水泥品种
    private String SNPZ;
    //水泥强度等级
    private String SNQDDJ;
    //水泥厂别
    private String CB;
    //砂产地
    private String SCD;
    //砂种类
    private String SZL;
    //掺合料种类
    private String CHLZL;
    //外加剂种类
    private String WJJZL;
    //外加剂2种类
    private String WJJ2ZL;
    //配比编号
    private String PBBH;
    //砂-水
    private String SHA_SHUI;
    //水泥每m3
    private String SNMPF;
    //水泥每盘
    private String SNMP;
    //砂每m3
    private String SMPF;
    //砂每盘
    private String SMP;
    //掺合料每m3
    private String CHLMPF;
    //掺合料每盘
    private String CHLMP;
    //外加剂每m3
    private String WJJMPF;
    //外加剂每盘
    private String WJJMP;
    //外加剂2每m3
    private String WJJ2MPF;
    //外加剂2每盘
    private String WJJ2MP;
    //制模日期
    private Date ZMRQ;
    //养护条件
    private String YHTJ;
    //要求龄期
    private String YQLQ;
    //要求试验日期
    private String YQSYRQ;
    //试块收到日期
    private Date SKSDRQ;
    //试块制作人
    private String SKZZR;
    //试件编号
    private String SJBH;
    //实际龄期
    private String SJLQ;
    //试件边长
    private String SJBC;
    //受压面积
    private String SYMJ;
    //试块数
    private int KUAISHU;
    //平均荷载
    private String HZPJ;
    //荷载单块1
    private String HZDK1;
    //荷载单块2
    private String HZDK2;
    //荷载单块3
    private String HZDK3;
    //荷载单块4
    private String HZDK4;
    //荷载单块5
    private String HZDK5;
    //荷载单块6
    private String HZDK6;
    //抗压强度
    private String KYQD;
    //达到设计强度
    private String DDSJ;
    //备注
    private String BZ;
    //结论
    private String JL;
    //单位代码
    private int DWDM;
    //试验项目代码
    private String SYXMDM;
    //试验项目名称
    private String SYXMMC;
    //试验编号
    private String SHIYBH;
    //试验名称
    private String SYMC;
    //委托单位编号
    private String WTDWBH;
    //工程编号
    private String GCBH;
    //技术负责人编号
    private int JSFZRBH;
    //技术负责人
    private String JSFZR;
    //校核人编号
    private int XHRBH;
    //校核人
    private String XHR;
    //校核备注
    private String XHBZ;
    //校核意见
    private String XHYJ;
    //签发备注
    private String QFBZ;
    //签发意见
    private String QFYJ;
    //试验人编号
    private int SYRBH;
    //试验人
    private String SYR;
    //报告日期
    private Date BGRQ;
    //执行规程
    private String ZXGC;
    //执行标准
    private String ZXBZ;
    //试验委托人
    private String SYWTR;
    //见证标志
    private String JZBZ;
    //合格标志
    private String HGBZ;
    //试验结果
    private String SYJG;
    //处理意见
    private String CLYJ;
    //委托组号
    private int WTZH;
    //记录表编号
    private String JLBBH;
    //报告表编号
    private String BGBBH;
    private String BHGMP;
    private String BHGMPF;
    private String YQBH;
    private Date SYARQ;


    public int getSjkyid() {
        return sjkyid;
    }

    public void setSjkyid(int sjkyid) {
        this.sjkyid = sjkyid;
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

    public int getCcid() {
        return ccid;
    }

    public void setCcid(int ccid) {
        this.ccid = ccid;
    }

    public String getSjkynumber() {
        return sjkynumber;
    }

    public void setSjkynumber(String sjkynumber) {
        this.sjkynumber = sjkynumber;
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

    @JsonSerialize(using = CustomDateSerializer.class)
    public Date getLYRQ() {
        return LYRQ;
    }

    public void setLYRQ(Date LYRQ) {
        this.LYRQ = LYRQ;
    }

}
