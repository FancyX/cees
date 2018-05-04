package com.fancyx.cees.domain.busi;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 啊Q on 2018-05-02.
 */
public class HunNingTuKangYa implements Serializable {
    private static final long serialVersionUID = 1L;

    //抗压id
    private int kyid;
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
    //抗压编号
    private String kynumber;
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
    //混凝土单位
    private String HNTDW;

    private int JSFZRBH;
    private String CHLYL;
    private String HZ3;
    private String SHASYBH;
    private String PZJMC;
    private String CHLMC;
    private String QFBZ;
    private String SYJG;
    //要求坍落度
    private String YQTLD;
    private String GCBH;
    private String WJJYL;
    private String SYXMMC;
    private String SHIZDLJ;
    private String SYL;
    private String ZHQD;
    private String JLBBH;
    private String XHR;
    private String FMHMC;
    //水泥标号
    private String SNBH;
    private String PZJZYSNL;
    private String SYMJ;
    private String ZXBZ;
    //施工部位
    private String SGBW;
    private Date YQSYRQ;
    private String WTDWBH;
    private String SHIHNL;
    private String SHAYL;
    private String DDQD;
    private int SYRBH;
    private String SHAXDMS;
    private String FMHCD;
    private String SYWTR;
    private String JZBZ;
    private String WJJCL;
    private String SNSYBH;
    private String HZ1;
    private String WTDBH;
    //设计强度
    private String SJQD;
    private String PHBBH;
    private String FMHYL;
    private String HZPJ;
    private String SHICD;
    private String JL;
    private String CHLCD;
    private String QFYJ;
    private String SJLQ;
    private String SHB;
    private String CLYJ;
    private String SHIYBH;
    //工程名称
    private String GCMC;
    private String BGBBH;
    private String SHIPZ;
    private String XHBZ;
    //水泥厂别
    private String SNCB;
    private String WJJMC;
    private String ZXGC;
    private String SJCC;
    private String SL;
    private Date SKSDRQ;
    private String SYXMDM;
    private String SHISYBH;
    private String JSFZR;
    private String SHAHNL;
    private String SYR;
    private String PZJCD;
    //送检编号
    private String SJBH;
    private String SYMC;
    //实测坍落度
    private String SCTLD;
    private String SHACD;
    private String HZ2;
    private String WJJZYSNL;
    private int DWDM;
    private String SNYL;
    private Date ZMRQ;
    private String WTDWMC;
    private String KYQD;
    private Date BGRQ;
    private String CHLZYSNL;
    private int XHRBH;
    private Date SYRQ;
    private String PZJCL;
    private String SGPHB;
    //水泥品种
    private String SNPZ;
    private String SHAPZ;
    private String YQLQ;
    private int WTZH;
    //实验编号
    private String SYBH;
    private String YQBH;
    private String SHIYL;
    private String BZ;
    private String FMHZYSNL;
    private String XHYJ;
    private String WJJCD;
    private String SNCCRQ;
    private String HGBZ;
    //拟配强度
    private String NPQD;
    private String SKYHTJ;
    private String PZJYL;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getKyid() {
        return kyid;
    }

    public void setKyid(int kyid) {
        this.kyid = kyid;
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

    public String getKynumber() {
        return kynumber;
    }

    public void setKynumber(String kynumber) {
        this.kynumber = kynumber;
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

    public String getHNTDW() {
        return HNTDW;
    }

    public void setHNTDW(String HNTDW) {
        this.HNTDW = HNTDW;
    }

    public int getJSFZRBH() {
        return JSFZRBH;
    }

    public void setJSFZRBH(int JSFZRBH) {
        this.JSFZRBH = JSFZRBH;
    }

    public String getCHLYL() {
        return CHLYL;
    }

    public void setCHLYL(String CHLYL) {
        this.CHLYL = CHLYL;
    }

    public String getHZ3() {
        return HZ3;
    }

    public void setHZ3(String HZ3) {
        this.HZ3 = HZ3;
    }

    public String getSHASYBH() {
        return SHASYBH;
    }

    public void setSHASYBH(String SHASYBH) {
        this.SHASYBH = SHASYBH;
    }

    public String getPZJMC() {
        return PZJMC;
    }

    public void setPZJMC(String PZJMC) {
        this.PZJMC = PZJMC;
    }

    public String getCHLMC() {
        return CHLMC;
    }

    public void setCHLMC(String CHLMC) {
        this.CHLMC = CHLMC;
    }

    public String getQFBZ() {
        return QFBZ;
    }

    public void setQFBZ(String QFBZ) {
        this.QFBZ = QFBZ;
    }

    public String getSYJG() {
        return SYJG;
    }

    public void setSYJG(String SYJG) {
        this.SYJG = SYJG;
    }

    public String getYQTLD() {
        return YQTLD;
    }

    public void setYQTLD(String YQTLD) {
        this.YQTLD = YQTLD;
    }

    public String getGCBH() {
        return GCBH;
    }

    public void setGCBH(String GCBH) {
        this.GCBH = GCBH;
    }

    public String getWJJYL() {
        return WJJYL;
    }

    public void setWJJYL(String WJJYL) {
        this.WJJYL = WJJYL;
    }

    public String getSYXMMC() {
        return SYXMMC;
    }

    public void setSYXMMC(String SYXMMC) {
        this.SYXMMC = SYXMMC;
    }

    public String getSHIZDLJ() {
        return SHIZDLJ;
    }

    public void setSHIZDLJ(String SHIZDLJ) {
        this.SHIZDLJ = SHIZDLJ;
    }

    public String getSYL() {
        return SYL;
    }

    public void setSYL(String SYL) {
        this.SYL = SYL;
    }

    public String getZHQD() {
        return ZHQD;
    }

    public void setZHQD(String ZHQD) {
        this.ZHQD = ZHQD;
    }

    public String getJLBBH() {
        return JLBBH;
    }

    public void setJLBBH(String JLBBH) {
        this.JLBBH = JLBBH;
    }

    public String getXHR() {
        return XHR;
    }

    public void setXHR(String XHR) {
        this.XHR = XHR;
    }

    public String getFMHMC() {
        return FMHMC;
    }

    public void setFMHMC(String FMHMC) {
        this.FMHMC = FMHMC;
    }

    public String getSNBH() {
        return SNBH;
    }

    public void setSNBH(String SNBH) {
        this.SNBH = SNBH;
    }

    public String getPZJZYSNL() {
        return PZJZYSNL;
    }

    public void setPZJZYSNL(String PZJZYSNL) {
        this.PZJZYSNL = PZJZYSNL;
    }

    public String getSYMJ() {
        return SYMJ;
    }

    public void setSYMJ(String SYMJ) {
        this.SYMJ = SYMJ;
    }

    public String getZXBZ() {
        return ZXBZ;
    }

    public void setZXBZ(String ZXBZ) {
        this.ZXBZ = ZXBZ;
    }

    public String getSGBW() {
        return SGBW;
    }

    public void setSGBW(String SGBW) {
        this.SGBW = SGBW;
    }

    public Date getYQSYRQ() {
        return YQSYRQ;
    }

    public void setYQSYRQ(Date YQSYRQ) {
        this.YQSYRQ = YQSYRQ;
    }

    public String getWTDWBH() {
        return WTDWBH;
    }

    public void setWTDWBH(String WTDWBH) {
        this.WTDWBH = WTDWBH;
    }

    public String getSHIHNL() {
        return SHIHNL;
    }

    public void setSHIHNL(String SHIHNL) {
        this.SHIHNL = SHIHNL;
    }

    public String getSHAYL() {
        return SHAYL;
    }

    public void setSHAYL(String SHAYL) {
        this.SHAYL = SHAYL;
    }

    public String getDDQD() {
        return DDQD;
    }

    public void setDDQD(String DDQD) {
        this.DDQD = DDQD;
    }

    public int getSYRBH() {
        return SYRBH;
    }

    public void setSYRBH(int SYRBH) {
        this.SYRBH = SYRBH;
    }

    public String getSHAXDMS() {
        return SHAXDMS;
    }

    public void setSHAXDMS(String SHAXDMS) {
        this.SHAXDMS = SHAXDMS;
    }

    public String getFMHCD() {
        return FMHCD;
    }

    public void setFMHCD(String FMHCD) {
        this.FMHCD = FMHCD;
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

    public String getWJJCL() {
        return WJJCL;
    }

    public void setWJJCL(String WJJCL) {
        this.WJJCL = WJJCL;
    }

    public String getSNSYBH() {
        return SNSYBH;
    }

    public void setSNSYBH(String SNSYBH) {
        this.SNSYBH = SNSYBH;
    }

    public String getHZ1() {
        return HZ1;
    }

    public void setHZ1(String HZ1) {
        this.HZ1 = HZ1;
    }

    public String getWTDBH() {
        return WTDBH;
    }

    public void setWTDBH(String WTDBH) {
        this.WTDBH = WTDBH;
    }

    public String getSJQD() {
        return SJQD;
    }

    public void setSJQD(String SJQD) {
        this.SJQD = SJQD;
    }

    public String getPHBBH() {
        return PHBBH;
    }

    public void setPHBBH(String PHBBH) {
        this.PHBBH = PHBBH;
    }

    public String getFMHYL() {
        return FMHYL;
    }

    public void setFMHYL(String FMHYL) {
        this.FMHYL = FMHYL;
    }

    public String getHZPJ() {
        return HZPJ;
    }

    public void setHZPJ(String HZPJ) {
        this.HZPJ = HZPJ;
    }

    public String getSHICD() {
        return SHICD;
    }

    public void setSHICD(String SHICD) {
        this.SHICD = SHICD;
    }

    public String getJL() {
        return JL;
    }

    public void setJL(String JL) {
        this.JL = JL;
    }

    public String getCHLCD() {
        return CHLCD;
    }

    public void setCHLCD(String CHLCD) {
        this.CHLCD = CHLCD;
    }

    public String getQFYJ() {
        return QFYJ;
    }

    public void setQFYJ(String QFYJ) {
        this.QFYJ = QFYJ;
    }

    public String getSJLQ() {
        return SJLQ;
    }

    public void setSJLQ(String SJLQ) {
        this.SJLQ = SJLQ;
    }

    public String getSHB() {
        return SHB;
    }

    public void setSHB(String SHB) {
        this.SHB = SHB;
    }

    public String getCLYJ() {
        return CLYJ;
    }

    public void setCLYJ(String CLYJ) {
        this.CLYJ = CLYJ;
    }

    public String getSHIYBH() {
        return SHIYBH;
    }

    public void setSHIYBH(String SHIYBH) {
        this.SHIYBH = SHIYBH;
    }

    public String getGCMC() {
        return GCMC;
    }

    public void setGCMC(String GCMC) {
        this.GCMC = GCMC;
    }

    public String getBGBBH() {
        return BGBBH;
    }

    public void setBGBBH(String BGBBH) {
        this.BGBBH = BGBBH;
    }

    public String getSHIPZ() {
        return SHIPZ;
    }

    public void setSHIPZ(String SHIPZ) {
        this.SHIPZ = SHIPZ;
    }

    public String getXHBZ() {
        return XHBZ;
    }

    public void setXHBZ(String XHBZ) {
        this.XHBZ = XHBZ;
    }

    public String getSNCB() {
        return SNCB;
    }

    public void setSNCB(String SNCB) {
        this.SNCB = SNCB;
    }

    public String getWJJMC() {
        return WJJMC;
    }

    public void setWJJMC(String WJJMC) {
        this.WJJMC = WJJMC;
    }

    public String getZXGC() {
        return ZXGC;
    }

    public void setZXGC(String ZXGC) {
        this.ZXGC = ZXGC;
    }

    public String getSJCC() {
        return SJCC;
    }

    public void setSJCC(String SJCC) {
        this.SJCC = SJCC;
    }

    public String getSL() {
        return SL;
    }

    public void setSL(String SL) {
        this.SL = SL;
    }

    public Date getSKSDRQ() {
        return SKSDRQ;
    }

    public void setSKSDRQ(Date SKSDRQ) {
        this.SKSDRQ = SKSDRQ;
    }

    public String getSYXMDM() {
        return SYXMDM;
    }

    public void setSYXMDM(String SYXMDM) {
        this.SYXMDM = SYXMDM;
    }

    public String getSHISYBH() {
        return SHISYBH;
    }

    public void setSHISYBH(String SHISYBH) {
        this.SHISYBH = SHISYBH;
    }

    public String getJSFZR() {
        return JSFZR;
    }

    public void setJSFZR(String JSFZR) {
        this.JSFZR = JSFZR;
    }

    public String getSHAHNL() {
        return SHAHNL;
    }

    public void setSHAHNL(String SHAHNL) {
        this.SHAHNL = SHAHNL;
    }

    public String getSYR() {
        return SYR;
    }

    public void setSYR(String SYR) {
        this.SYR = SYR;
    }

    public String getPZJCD() {
        return PZJCD;
    }

    public void setPZJCD(String PZJCD) {
        this.PZJCD = PZJCD;
    }

    public String getSJBH() {
        return SJBH;
    }

    public void setSJBH(String SJBH) {
        this.SJBH = SJBH;
    }

    public String getSYMC() {
        return SYMC;
    }

    public void setSYMC(String SYMC) {
        this.SYMC = SYMC;
    }

    public String getSCTLD() {
        return SCTLD;
    }

    public void setSCTLD(String SCTLD) {
        this.SCTLD = SCTLD;
    }

    public String getSHACD() {
        return SHACD;
    }

    public void setSHACD(String SHACD) {
        this.SHACD = SHACD;
    }

    public String getHZ2() {
        return HZ2;
    }

    public void setHZ2(String HZ2) {
        this.HZ2 = HZ2;
    }

    public String getWJJZYSNL() {
        return WJJZYSNL;
    }

    public void setWJJZYSNL(String WJJZYSNL) {
        this.WJJZYSNL = WJJZYSNL;
    }

    public int getDWDM() {
        return DWDM;
    }

    public void setDWDM(int DWDM) {
        this.DWDM = DWDM;
    }

    public String getSNYL() {
        return SNYL;
    }

    public void setSNYL(String SNYL) {
        this.SNYL = SNYL;
    }

    public Date getZMRQ() {
        return ZMRQ;
    }

    public void setZMRQ(Date ZMRQ) {
        this.ZMRQ = ZMRQ;
    }

    public String getWTDWMC() {
        return WTDWMC;
    }

    public void setWTDWMC(String WTDWMC) {
        this.WTDWMC = WTDWMC;
    }

    public String getKYQD() {
        return KYQD;
    }

    public void setKYQD(String KYQD) {
        this.KYQD = KYQD;
    }

    public Date getBGRQ() {
        return BGRQ;
    }

    public void setBGRQ(Date BGRQ) {
        this.BGRQ = BGRQ;
    }

    public String getCHLZYSNL() {
        return CHLZYSNL;
    }

    public void setCHLZYSNL(String CHLZYSNL) {
        this.CHLZYSNL = CHLZYSNL;
    }

    public int getXHRBH() {
        return XHRBH;
    }

    public void setXHRBH(int XHRBH) {
        this.XHRBH = XHRBH;
    }

    public Date getSYRQ() {
        return SYRQ;
    }

    public void setSYRQ(Date SYRQ) {
        this.SYRQ = SYRQ;
    }

    public String getPZJCL() {
        return PZJCL;
    }

    public void setPZJCL(String PZJCL) {
        this.PZJCL = PZJCL;
    }

    public String getSGPHB() {
        return SGPHB;
    }

    public void setSGPHB(String SGPHB) {
        this.SGPHB = SGPHB;
    }

    public String getSNPZ() {
        return SNPZ;
    }

    public void setSNPZ(String SNPZ) {
        this.SNPZ = SNPZ;
    }

    public String getSHAPZ() {
        return SHAPZ;
    }

    public void setSHAPZ(String SHAPZ) {
        this.SHAPZ = SHAPZ;
    }

    public String getYQLQ() {
        return YQLQ;
    }

    public void setYQLQ(String YQLQ) {
        this.YQLQ = YQLQ;
    }

    public int getWTZH() {
        return WTZH;
    }

    public void setWTZH(int WTZH) {
        this.WTZH = WTZH;
    }

    public String getSYBH() {
        return SYBH;
    }

    public void setSYBH(String SYBH) {
        this.SYBH = SYBH;
    }

    public String getYQBH() {
        return YQBH;
    }

    public void setYQBH(String YQBH) {
        this.YQBH = YQBH;
    }

    public String getSHIYL() {
        return SHIYL;
    }

    public void setSHIYL(String SHIYL) {
        this.SHIYL = SHIYL;
    }

    public String getBZ() {
        return BZ;
    }

    public void setBZ(String BZ) {
        this.BZ = BZ;
    }

    public String getFMHZYSNL() {
        return FMHZYSNL;
    }

    public void setFMHZYSNL(String FMHZYSNL) {
        this.FMHZYSNL = FMHZYSNL;
    }

    public String getXHYJ() {
        return XHYJ;
    }

    public void setXHYJ(String XHYJ) {
        this.XHYJ = XHYJ;
    }

    public String getWJJCD() {
        return WJJCD;
    }

    public void setWJJCD(String WJJCD) {
        this.WJJCD = WJJCD;
    }

    public String getSNCCRQ() {
        return SNCCRQ;
    }

    public void setSNCCRQ(String SNCCRQ) {
        this.SNCCRQ = SNCCRQ;
    }

    public String getHGBZ() {
        return HGBZ;
    }

    public void setHGBZ(String HGBZ) {
        this.HGBZ = HGBZ;
    }

    public String getNPQD() {
        return NPQD;
    }

    public void setNPQD(String NPQD) {
        this.NPQD = NPQD;
    }

    public String getSKYHTJ() {
        return SKYHTJ;
    }

    public void setSKYHTJ(String SKYHTJ) {
        this.SKYHTJ = SKYHTJ;
    }

    public String getPZJYL() {
        return PZJYL;
    }

    public void setPZJYL(String PZJYL) {
        this.PZJYL = PZJYL;
    }
}
