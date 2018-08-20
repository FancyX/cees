package com.fancyx.cees.domain.busi;

import java.util.Date;

/**
 * Created by 啊Q on 2018-07-21.
 */
public class CEES_SNJJ {
    //水泥净浆id
    private int snjjid;
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
    //水泥净浆编号
    private String snjjnumber;
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
    //试验编号1
    private String SYBH1;
    //试验编号2
    private String SYBH2;
    //仪器编号
    private String YQBH;
    //工程名称
    private String GCMC;
    //试验日期
    private Date SYRQ;
    //产地来源
    private String CLCD;
    //用途说明
    private String CLYT;
    //结论
    private String JL;
    //备注
    private String BZ;
    //单位代码
    private int DWDM;
    //试验项目代码1
    private String SYXMDM1;
    //试验项目代码2
    private String SYXMDM2;
    //试验项目名称1
    private String SYXMMC1;
    //试验项目名称2
    private String SYXMMC2;
    //试样编号
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
    //执行规程1
    private String ZXGC1;
    //执行规程2
    private String ZXGC2;
    //执行标号1
    private String ZXBZ1;
    //执行标准2
    private String ZXBZ2;
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
    //委托人
    private String WTR;
    //施工部位
    private String SGBW;
    //厂别
    private String CB;
    //抗折长
    private String KZC;
    //抗折宽
    private String KZK;
    //抗折高
    private String KZG;
    //抗折跨度
    private String KZKD;
    //抗折单块1
    private String KZDK1;
    //抗折单块2
    private String KZDK2;
    //抗折单块3
    private String KZDK3;
    //抗折单块平均
    private String KZDKPJ;
    //抗折强度
    private String KZQD;
    //抗折达到设计强度
    private String KZDDSJQD;
    //抗压试件边长
    private String KYSJBC;
    //抗压受压面机
    private String KYSYMJ;
    //抗压单块1
    private String KYDK1;
    //抗压单块2
    private String KYDK2;
    //抗压单块3
    private String KYDK3;
    //抗压单块4
    private String KYDK4;
    //抗压单块5
    private String KYDK5;
    //抗压单块6
    private String KYDK6;
    //抗压单块平均
    private String KYDKPJ;
    //抗压强度
    private String KYQD;
    //抗压达到设计强度
    private String KYDDSJQD;
    //砂浆种类
    private String SJZL;
    //稠度
    private String CD;
    //水泥品种
    private String SNPZ;
    //强度等级
    private String QDDJ;
    //外加剂种类
    private String WJJZL;
    //外加剂种类2
    private String WJJZL2;
    //掺合料种类
    private String CHLZL;
    //配合比编号
    private String PHBBH;
    //水泥
    private String SN1;
    //砂
    private String SZ;
    //水
    private String SHUI;
    //掺合料
    private String CHL;
    //外加剂
    private String WJJ;
    //外加剂2
    private String WJJ2;
    //制模日期
    private Date ZMRQ;
    //养护条件
    private String YHTJ;
    //要求龄期
    private String YQLQ;
    //要求试验日期
    private Date YQSYRQ;
    //试块收到日期
    private Date SKSDRQ;
    //试块制作人
    private String SKZZR;
    //试件编号
    private String SJBH;
    //实际龄期
    private String SJLQ;
    //实际抗折强度
    private String SJKZQD;
    //实际抗压强度
    private String SJKYQD;
    //记录表编号
    private String JLBBH;
    //报告表编号
    private String BGBBH;
    private String SYZL;

    public int getSnjjid() {
        return snjjid;
    }

    public void setSnjjid(int snjjid) {
        this.snjjid = snjjid;
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

    public String getSnjjnumber() {
        return snjjnumber;
    }

    public void setSnjjnumber(String snjjnumber) {
        this.snjjnumber = snjjnumber;
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

    public Date getLYRQ() {
        return LYRQ;
    }

    public void setLYRQ(Date LYRQ) {
        this.LYRQ = LYRQ;
    }

    public String getSYBH1() {
        return SYBH1;
    }

    public void setSYBH1(String SYBH1) {
        this.SYBH1 = SYBH1;
    }

    public String getSYBH2() {
        return SYBH2;
    }

    public void setSYBH2(String SYBH2) {
        this.SYBH2 = SYBH2;
    }

    public String getYQBH() {
        return YQBH;
    }

    public void setYQBH(String YQBH) {
        this.YQBH = YQBH;
    }

    public String getGCMC() {
        return GCMC;
    }

    public void setGCMC(String GCMC) {
        this.GCMC = GCMC;
    }

    public Date getSYRQ() {
        return SYRQ;
    }

    public void setSYRQ(Date SYRQ) {
        this.SYRQ = SYRQ;
    }

    public String getCLCD() {
        return CLCD;
    }

    public void setCLCD(String CLCD) {
        this.CLCD = CLCD;
    }

    public String getCLYT() {
        return CLYT;
    }

    public void setCLYT(String CLYT) {
        this.CLYT = CLYT;
    }

    public String getJL() {
        return JL;
    }

    public void setJL(String JL) {
        this.JL = JL;
    }

    public String getBZ() {
        return BZ;
    }

    public void setBZ(String BZ) {
        this.BZ = BZ;
    }

    public int getDWDM() {
        return DWDM;
    }

    public void setDWDM(int DWDM) {
        this.DWDM = DWDM;
    }

    public String getSYXMDM1() {
        return SYXMDM1;
    }

    public void setSYXMDM1(String SYXMDM1) {
        this.SYXMDM1 = SYXMDM1;
    }

    public String getSYXMDM2() {
        return SYXMDM2;
    }

    public void setSYXMDM2(String SYXMDM2) {
        this.SYXMDM2 = SYXMDM2;
    }

    public String getSYXMMC1() {
        return SYXMMC1;
    }

    public void setSYXMMC1(String SYXMMC1) {
        this.SYXMMC1 = SYXMMC1;
    }

    public String getSYXMMC2() {
        return SYXMMC2;
    }

    public void setSYXMMC2(String SYXMMC2) {
        this.SYXMMC2 = SYXMMC2;
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

    public Date getBGRQ() {
        return BGRQ;
    }

    public void setBGRQ(Date BGRQ) {
        this.BGRQ = BGRQ;
    }

    public String getZXGC1() {
        return ZXGC1;
    }

    public void setZXGC1(String ZXGC1) {
        this.ZXGC1 = ZXGC1;
    }

    public String getZXGC2() {
        return ZXGC2;
    }

    public void setZXGC2(String ZXGC2) {
        this.ZXGC2 = ZXGC2;
    }

    public String getZXBZ1() {
        return ZXBZ1;
    }

    public void setZXBZ1(String ZXBZ1) {
        this.ZXBZ1 = ZXBZ1;
    }

    public String getZXBZ2() {
        return ZXBZ2;
    }

    public void setZXBZ2(String ZXBZ2) {
        this.ZXBZ2 = ZXBZ2;
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

    public String getWTR() {
        return WTR;
    }

    public void setWTR(String WTR) {
        this.WTR = WTR;
    }

    public String getSGBW() {
        return SGBW;
    }

    public void setSGBW(String SGBW) {
        this.SGBW = SGBW;
    }

    public String getCB() {
        return CB;
    }

    public void setCB(String CB) {
        this.CB = CB;
    }

    public String getKZC() {
        return KZC;
    }

    public void setKZC(String KZC) {
        this.KZC = KZC;
    }

    public String getKZK() {
        return KZK;
    }

    public void setKZK(String KZK) {
        this.KZK = KZK;
    }

    public String getKZG() {
        return KZG;
    }

    public void setKZG(String KZG) {
        this.KZG = KZG;
    }

    public String getKZKD() {
        return KZKD;
    }

    public void setKZKD(String KZKD) {
        this.KZKD = KZKD;
    }

    public String getKZDK1() {
        return KZDK1;
    }

    public void setKZDK1(String KZDK1) {
        this.KZDK1 = KZDK1;
    }

    public String getKZDK2() {
        return KZDK2;
    }

    public void setKZDK2(String KZDK2) {
        this.KZDK2 = KZDK2;
    }

    public String getKZDK3() {
        return KZDK3;
    }

    public void setKZDK3(String KZDK3) {
        this.KZDK3 = KZDK3;
    }

    public String getKZDKPJ() {
        return KZDKPJ;
    }

    public void setKZDKPJ(String KZDKPJ) {
        this.KZDKPJ = KZDKPJ;
    }

    public String getKZQD() {
        return KZQD;
    }

    public void setKZQD(String KZQD) {
        this.KZQD = KZQD;
    }

    public String getKZDDSJQD() {
        return KZDDSJQD;
    }

    public void setKZDDSJQD(String KZDDSJQD) {
        this.KZDDSJQD = KZDDSJQD;
    }

    public String getKYSJBC() {
        return KYSJBC;
    }

    public void setKYSJBC(String KYSJBC) {
        this.KYSJBC = KYSJBC;
    }

    public String getKYSYMJ() {
        return KYSYMJ;
    }

    public void setKYSYMJ(String KYSYMJ) {
        this.KYSYMJ = KYSYMJ;
    }

    public String getKYDK1() {
        return KYDK1;
    }

    public void setKYDK1(String KYDK1) {
        this.KYDK1 = KYDK1;
    }

    public String getKYDK2() {
        return KYDK2;
    }

    public void setKYDK2(String KYDK2) {
        this.KYDK2 = KYDK2;
    }

    public String getKYDK3() {
        return KYDK3;
    }

    public void setKYDK3(String KYDK3) {
        this.KYDK3 = KYDK3;
    }

    public String getKYDK4() {
        return KYDK4;
    }

    public void setKYDK4(String KYDK4) {
        this.KYDK4 = KYDK4;
    }

    public String getKYDK5() {
        return KYDK5;
    }

    public void setKYDK5(String KYDK5) {
        this.KYDK5 = KYDK5;
    }

    public String getKYDK6() {
        return KYDK6;
    }

    public void setKYDK6(String KYDK6) {
        this.KYDK6 = KYDK6;
    }

    public String getKYDKPJ() {
        return KYDKPJ;
    }

    public void setKYDKPJ(String KYDKPJ) {
        this.KYDKPJ = KYDKPJ;
    }

    public String getKYQD() {
        return KYQD;
    }

    public void setKYQD(String KYQD) {
        this.KYQD = KYQD;
    }

    public String getKYDDSJQD() {
        return KYDDSJQD;
    }

    public void setKYDDSJQD(String KYDDSJQD) {
        this.KYDDSJQD = KYDDSJQD;
    }

    public String getSJZL() {
        return SJZL;
    }

    public void setSJZL(String SJZL) {
        this.SJZL = SJZL;
    }

    public String getCD() {
        return CD;
    }

    public void setCD(String CD) {
        this.CD = CD;
    }

    public String getSNPZ() {
        return SNPZ;
    }

    public void setSNPZ(String SNPZ) {
        this.SNPZ = SNPZ;
    }

    public String getQDDJ() {
        return QDDJ;
    }

    public void setQDDJ(String QDDJ) {
        this.QDDJ = QDDJ;
    }

    public String getWJJZL() {
        return WJJZL;
    }

    public void setWJJZL(String WJJZL) {
        this.WJJZL = WJJZL;
    }

    public String getWJJZL2() {
        return WJJZL2;
    }

    public void setWJJZL2(String WJJZL2) {
        this.WJJZL2 = WJJZL2;
    }

    public String getCHLZL() {
        return CHLZL;
    }

    public void setCHLZL(String CHLZL) {
        this.CHLZL = CHLZL;
    }

    public String getPHBBH() {
        return PHBBH;
    }

    public void setPHBBH(String PHBBH) {
        this.PHBBH = PHBBH;
    }

    public String getSN1() {
        return SN1;
    }

    public void setSN1(String SN1) {
        this.SN1 = SN1;
    }

    public String getSZ() {
        return SZ;
    }

    public void setSZ(String SZ) {
        this.SZ = SZ;
    }

    public String getSHUI() {
        return SHUI;
    }

    public void setSHUI(String SHUI) {
        this.SHUI = SHUI;
    }

    public String getCHL() {
        return CHL;
    }

    public void setCHL(String CHL) {
        this.CHL = CHL;
    }

    public String getWJJ() {
        return WJJ;
    }

    public void setWJJ(String WJJ) {
        this.WJJ = WJJ;
    }

    public String getWJJ2() {
        return WJJ2;
    }

    public void setWJJ2(String WJJ2) {
        this.WJJ2 = WJJ2;
    }

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

    public Date getYQSYRQ() {
        return YQSYRQ;
    }

    public void setYQSYRQ(Date YQSYRQ) {
        this.YQSYRQ = YQSYRQ;
    }

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

    public String getSJKZQD() {
        return SJKZQD;
    }

    public void setSJKZQD(String SJKZQD) {
        this.SJKZQD = SJKZQD;
    }

    public String getSJKYQD() {
        return SJKYQD;
    }

    public void setSJKYQD(String SJKYQD) {
        this.SJKYQD = SJKYQD;
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

    public String getSYZL() {
        return SYZL;
    }

    public void setSYZL(String SYZL) {
        this.SYZL = SYZL;
    }
}
