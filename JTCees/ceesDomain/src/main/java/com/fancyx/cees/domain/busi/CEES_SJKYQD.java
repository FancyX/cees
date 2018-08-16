package com.fancyx.cees.domain.busi;


import com.fancyx.cees.CustomDateSerializer;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 啊Q on 2018-07-14.
 */
public class CEES_SJKYQD  implements Serializable {

    private static final long serialVersionUID = 1L;

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

    public String getGCMC() {
        return GCMC;
    }

    public void setGCMC(String GCMC) {
        this.GCMC = GCMC;
    }

    public String getSYBH() {
        return SYBH;
    }

    public void setSYBH(String SYBH) {
        this.SYBH = SYBH;
    }

    @JsonSerialize(using = CustomDateSerializer.class)
    public Date getSYRQ() {
        return SYRQ;
    }

    public void setSYRQ(Date SYRQ) {
        this.SYRQ = SYRQ;
    }

    public String getSGBW() {
        return SGBW;
    }

    public void setSGBW(String SGBW) {
        this.SGBW = SGBW;
    }

    public String getWTR() {
        return WTR;
    }

    public void setWTR(String WTR) {
        this.WTR = WTR;
    }

    public String getSJZL() {
        return SJZL;
    }

    public void setSJZL(String SJZL) {
        this.SJZL = SJZL;
    }

    public String getSJZLQD() {
        return SJZLQD;
    }

    public void setSJZLQD(String SJZLQD) {
        this.SJZLQD = SJZLQD;
    }

    public String getCD() {
        return CD;
    }

    public void setCD(String CD) {
        this.CD = CD;
    }

    public String getCDDW() {
        return CDDW;
    }

    public void setCDDW(String CDDW) {
        this.CDDW = CDDW;
    }

    public String getSNPZ() {
        return SNPZ;
    }

    public void setSNPZ(String SNPZ) {
        this.SNPZ = SNPZ;
    }

    public String getSNQDDJ() {
        return SNQDDJ;
    }

    public void setSNQDDJ(String SNQDDJ) {
        this.SNQDDJ = SNQDDJ;
    }

    public String getCB() {
        return CB;
    }

    public void setCB(String CB) {
        this.CB = CB;
    }

    public String getSCD() {
        return SCD;
    }

    public void setSCD(String SCD) {
        this.SCD = SCD;
    }

    public String getSZL() {
        return SZL;
    }

    public void setSZL(String SZL) {
        this.SZL = SZL;
    }

    public String getCHLZL() {
        return CHLZL;
    }

    public void setCHLZL(String CHLZL) {
        this.CHLZL = CHLZL;
    }

    public String getWJJZL() {
        return WJJZL;
    }

    public void setWJJZL(String WJJZL) {
        this.WJJZL = WJJZL;
    }

    public String getWJJ2ZL() {
        return WJJ2ZL;
    }

    public void setWJJ2ZL(String WJJ2ZL) {
        this.WJJ2ZL = WJJ2ZL;
    }

    public String getPBBH() {
        return PBBH;
    }

    public void setPBBH(String PBBH) {
        this.PBBH = PBBH;
    }

    public String getSHA_SHUI() {
        return SHA_SHUI;
    }

    public void setSHA_SHUI(String SHA_SHUI) {
        this.SHA_SHUI = SHA_SHUI;
    }

    public String getSNMPF() {
        return SNMPF;
    }

    public void setSNMPF(String SNMPF) {
        this.SNMPF = SNMPF;
    }

    public String getSNMP() {
        return SNMP;
    }

    public void setSNMP(String SNMP) {
        this.SNMP = SNMP;
    }

    public String getSMPF() {
        return SMPF;
    }

    public void setSMPF(String SMPF) {
        this.SMPF = SMPF;
    }

    public String getSMP() {
        return SMP;
    }

    public void setSMP(String SMP) {
        this.SMP = SMP;
    }

    public String getCHLMPF() {
        return CHLMPF;
    }

    public void setCHLMPF(String CHLMPF) {
        this.CHLMPF = CHLMPF;
    }

    public String getCHLMP() {
        return CHLMP;
    }

    public void setCHLMP(String CHLMP) {
        this.CHLMP = CHLMP;
    }

    public String getWJJMPF() {
        return WJJMPF;
    }

    public void setWJJMPF(String WJJMPF) {
        this.WJJMPF = WJJMPF;
    }

    public String getWJJMP() {
        return WJJMP;
    }

    public void setWJJMP(String WJJMP) {
        this.WJJMP = WJJMP;
    }

    public String getWJJ2MPF() {
        return WJJ2MPF;
    }

    public void setWJJ2MPF(String WJJ2MPF) {
        this.WJJ2MPF = WJJ2MPF;
    }

    public String getWJJ2MP() {
        return WJJ2MP;
    }

    public void setWJJ2MP(String WJJ2MP) {
        this.WJJ2MP = WJJ2MP;
    }

    @JsonSerialize(using = CustomDateSerializer.class)
    public Date getZMRQ() {
        return ZMRQ;
    }

    public void setZMRQ(Date ZMRQ) {
        this.ZMRQ = ZMRQ;
    }

    public String getYHTJ() {
        return YHTJ;
    }

    public void setYHTJ(String YHTJ) {
        this.YHTJ = YHTJ;
    }

    public String getYQLQ() {
        return YQLQ;
    }

    public void setYQLQ(String YQLQ) {
        this.YQLQ = YQLQ;
    }

    public String getYQSYRQ() {
        return YQSYRQ;
    }

    public void setYQSYRQ(String YQSYRQ) {
        this.YQSYRQ = YQSYRQ;
    }
    @JsonSerialize(using = CustomDateSerializer.class)
    public Date getSKSDRQ() {
        return SKSDRQ;
    }

    public void setSKSDRQ(Date SKSDRQ) {
        this.SKSDRQ = SKSDRQ;
    }

    public String getSKZZR() {
        return SKZZR;
    }

    public void setSKZZR(String SKZZR) {
        this.SKZZR = SKZZR;
    }

    public String getSJBH() {
        return SJBH;
    }

    public void setSJBH(String SJBH) {
        this.SJBH = SJBH;
    }

    public String getSJLQ() {
        return SJLQ;
    }

    public void setSJLQ(String SJLQ) {
        this.SJLQ = SJLQ;
    }

    public String getSJBC() {
        return SJBC;
    }

    public void setSJBC(String SJBC) {
        this.SJBC = SJBC;
    }

    public String getSYMJ() {
        return SYMJ;
    }

    public void setSYMJ(String SYMJ) {
        this.SYMJ = SYMJ;
    }

    public int getKUAISHU() {
        return KUAISHU;
    }

    public void setKUAISHU(int KUAISHU) {
        this.KUAISHU = KUAISHU;
    }

    public String getHZPJ() {
        return HZPJ;
    }

    public void setHZPJ(String HZPJ) {
        this.HZPJ = HZPJ;
    }

    public String getHZDK1() {
        return HZDK1;
    }

    public void setHZDK1(String HZDK1) {
        this.HZDK1 = HZDK1;
    }

    public String getHZDK2() {
        return HZDK2;
    }

    public void setHZDK2(String HZDK2) {
        this.HZDK2 = HZDK2;
    }

    public String getHZDK3() {
        return HZDK3;
    }

    public void setHZDK3(String HZDK3) {
        this.HZDK3 = HZDK3;
    }

    public String getHZDK4() {
        return HZDK4;
    }

    public void setHZDK4(String HZDK4) {
        this.HZDK4 = HZDK4;
    }

    public String getHZDK5() {
        return HZDK5;
    }

    public void setHZDK5(String HZDK5) {
        this.HZDK5 = HZDK5;
    }

    public String getHZDK6() {
        return HZDK6;
    }

    public void setHZDK6(String HZDK6) {
        this.HZDK6 = HZDK6;
    }

    public String getKYQD() {
        return KYQD;
    }

    public void setKYQD(String KYQD) {
        this.KYQD = KYQD;
    }

    public String getDDSJ() {
        return DDSJ;
    }

    public void setDDSJ(String DDSJ) {
        this.DDSJ = DDSJ;
    }

    public String getBZ() {
        return BZ;
    }

    public void setBZ(String BZ) {
        this.BZ = BZ;
    }

    public String getJL() {
        return JL;
    }

    public void setJL(String JL) {
        this.JL = JL;
    }

    public int getDWDM() {
        return DWDM;
    }

    public void setDWDM(int DWDM) {
        this.DWDM = DWDM;
    }

    public String getSYXMDM() {
        return SYXMDM;
    }

    public void setSYXMDM(String SYXMDM) {
        this.SYXMDM = SYXMDM;
    }

    public String getSYXMMC() {
        return SYXMMC;
    }

    public void setSYXMMC(String SYXMMC) {
        this.SYXMMC = SYXMMC;
    }

    public String getSHIYBH() {
        return SHIYBH;
    }

    public void setSHIYBH(String SHIYBH) {
        this.SHIYBH = SHIYBH;
    }

    public String getSYMC() {
        return SYMC;
    }

    public void setSYMC(String SYMC) {
        this.SYMC = SYMC;
    }

    public String getWTDWBH() {
        return WTDWBH;
    }

    public void setWTDWBH(String WTDWBH) {
        this.WTDWBH = WTDWBH;
    }

    public String getGCBH() {
        return GCBH;
    }

    public void setGCBH(String GCBH) {
        this.GCBH = GCBH;
    }

    public int getJSFZRBH() {
        return JSFZRBH;
    }

    public void setJSFZRBH(int JSFZRBH) {
        this.JSFZRBH = JSFZRBH;
    }

    public String getJSFZR() {
        return JSFZR;
    }

    public void setJSFZR(String JSFZR) {
        this.JSFZR = JSFZR;
    }

    public int getXHRBH() {
        return XHRBH;
    }

    public void setXHRBH(int XHRBH) {
        this.XHRBH = XHRBH;
    }

    public String getXHR() {
        return XHR;
    }

    public void setXHR(String XHR) {
        this.XHR = XHR;
    }

    public String getXHBZ() {
        return XHBZ;
    }

    public void setXHBZ(String XHBZ) {
        this.XHBZ = XHBZ;
    }

    public String getXHYJ() {
        return XHYJ;
    }

    public void setXHYJ(String XHYJ) {
        this.XHYJ = XHYJ;
    }

    public String getQFBZ() {
        return QFBZ;
    }

    public void setQFBZ(String QFBZ) {
        this.QFBZ = QFBZ;
    }

    public String getQFYJ() {
        return QFYJ;
    }

    public void setQFYJ(String QFYJ) {
        this.QFYJ = QFYJ;
    }

    public int getSYRBH() {
        return SYRBH;
    }

    public void setSYRBH(int SYRBH) {
        this.SYRBH = SYRBH;
    }

    public String getSYR() {
        return SYR;
    }

    public void setSYR(String SYR) {
        this.SYR = SYR;
    }
    @JsonSerialize(using = CustomDateSerializer.class)
    public Date getBGRQ() {
        return BGRQ;
    }

    public void setBGRQ(Date BGRQ) {
        this.BGRQ = BGRQ;
    }

    public String getZXGC() {
        return ZXGC;
    }

    public void setZXGC(String ZXGC) {
        this.ZXGC = ZXGC;
    }

    public String getZXBZ() {
        return ZXBZ;
    }

    public void setZXBZ(String ZXBZ) {
        this.ZXBZ = ZXBZ;
    }

    public String getSYWTR() {
        return SYWTR;
    }

    public void setSYWTR(String SYWTR) {
        this.SYWTR = SYWTR;
    }

    public String getJZBZ() {
        return JZBZ;
    }

    public void setJZBZ(String JZBZ) {
        this.JZBZ = JZBZ;
    }

    public String getHGBZ() {
        return HGBZ;
    }

    public void setHGBZ(String HGBZ) {
        this.HGBZ = HGBZ;
    }

    public String getSYJG() {
        return SYJG;
    }

    public void setSYJG(String SYJG) {
        this.SYJG = SYJG;
    }

    public String getCLYJ() {
        return CLYJ;
    }

    public void setCLYJ(String CLYJ) {
        this.CLYJ = CLYJ;
    }

    public int getWTZH() {
        return WTZH;
    }

    public void setWTZH(int WTZH) {
        this.WTZH = WTZH;
    }

    public String getJLBBH() {
        return JLBBH;
    }

    public void setJLBBH(String JLBBH) {
        this.JLBBH = JLBBH;
    }

    public String getBGBBH() {
        return BGBBH;
    }

    public void setBGBBH(String BGBBH) {
        this.BGBBH = BGBBH;
    }

    public String getBHGMP() {
        return BHGMP;
    }

    public void setBHGMP(String BHGMP) {
        this.BHGMP = BHGMP;
    }

    public String getBHGMPF() {
        return BHGMPF;
    }

    public void setBHGMPF(String BHGMPF) {
        this.BHGMPF = BHGMPF;
    }

    public String getYQBH() {
        return YQBH;
    }

    public void setYQBH(String YQBH) {
        this.YQBH = YQBH;
    }

    @JsonSerialize(using = CustomDateSerializer.class)
    public Date getSYARQ() {
        return SYARQ;
    }

    public void setSYARQ(Date SYARQ) {
        this.SYARQ = SYARQ;
    }
}
