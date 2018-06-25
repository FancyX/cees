package com.fancyx.cees.domain.busi;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 啊Q on 2018-06-23.
 */
public class CEES_Hntkz implements Serializable {

    //抗折id
    private int kzid;
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
    private String kznumber;
    private String testnumber;
    //序号
    private int sn;
    //工程明细序号/工程抗压序号
    private int sn_project;
    //送检单明细序号/提交序号
    private int sn_test;
    //状态
    private String state = "录入";
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


    private String HZ3;
    private String SNCCRQ;
    private String SNYL;
    private String SYJG;
    private String NPQD;
    private String PZJYL;
    private String GCMC;
    private String YQLQ;
    private String SHISYBH;
    private String WJJCD;
    private int JSFZRBH;
    private String FMHZYSNL;
    private String JSKD;
    private String ZXBZ;
    private String JLBBH;
    private String SNPZ;
    private String SHIYL;
    private String WTDWMC;
    private String SKYHTJ;
    private String XHR;
    private String ZHQD;
    private String PZJCL;
    private String QFBZ;
    private String CHLZYSNL;
    private String JZBZ;
    private String SYBH;
    private String SHASYBH;
    private String HNTDW;
    private String HZ1;
    private String CHLYL;
    private Date SYRQ;
    private String YQBH;
    private String SHIZDLJ;
    private String DDQD;
    private int SYRBH;
    private String FMHMC;
    private String QFYJ;
    private String CLYJ;
    private String SJCC_K;
    private String HZPJ;
    private String SGPHB;
    private String SHAPZ;
    private String SYXMMC;
    private String SYL;
    private String YQTLD;
    private String WJJYL;
    private String SGBW;
    private String JL;
    private String CHLMC;
    private String PZJMC;
    private String SHAXDMS;
    private String WTDBH;
    private String ZXGC;
    private String SJCC_G;
    private String SHB;
    private String SNBH;
    private String BGBBH;
    private String WTDWBH;
    private String SYWTR;
    private String SHAYL;
    private String PZJZYSNL;
    private String SYMC;
    private String CHLCD;
    private String XHBZ;
    private String SNSYBH;
    private String SHICD;
    private String WJJCL;
    private String PHBBH;
    private String HZ2;
    private String SJLQ;
    private String SHIYBH;
    private Date YQSYRQ;
    private String GCBH;
    private String SHIHNL;
    private String JSFZR;
    private String SYR;
    private String WJJZYSNL;
    private String SJCC_C;
    private int WTZH;
    private String SHACD;
    private String SYXMDM;
    private String SCTLD;
    private Date SKSDRQ;
    private Date ZMRQ;
    private String SJQD;
    private String KZQD;
    private Date BGRQ;
    private String PZJCD;
    private int XHRBH;
    private String SL;
    private String SHAHNL;
    private int DWDM;
    private String HGBZ;
    private String SNCB;
    private String SJBH;
    private String FMHYL;
    private String FMHCD;
    private String WJJMC;
    private String BZ;
    private String SHIPZ;
    private String XHYJ;

    public int getKzid() {
        return kzid;
    }

    public void setKzid(int kzid) {
        this.kzid = kzid;
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

    public String getKznumber() {
        return kznumber;
    }

    public void setKznumber(String kznumber) {
        this.kznumber = kznumber;
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

    public String getHZ3() {
        return HZ3;
    }

    public void setHZ3(String HZ3) {
        this.HZ3 = HZ3;
    }

    public String getSNCCRQ() {
        return SNCCRQ;
    }

    public void setSNCCRQ(String SNCCRQ) {
        this.SNCCRQ = SNCCRQ;
    }

    public String getSNYL() {
        return SNYL;
    }

    public void setSNYL(String SNYL) {
        this.SNYL = SNYL;
    }

    public String getSYJG() {
        return SYJG;
    }

    public void setSYJG(String SYJG) {
        this.SYJG = SYJG;
    }

    public String getNPQD() {
        return NPQD;
    }

    public void setNPQD(String NPQD) {
        this.NPQD = NPQD;
    }

    public String getPZJYL() {
        return PZJYL;
    }

    public void setPZJYL(String PZJYL) {
        this.PZJYL = PZJYL;
    }

    public String getGCMC() {
        return GCMC;
    }

    public void setGCMC(String GCMC) {
        this.GCMC = GCMC;
    }

    public String getYQLQ() {
        return YQLQ;
    }

    public void setYQLQ(String YQLQ) {
        this.YQLQ = YQLQ;
    }

    public String getSHISYBH() {
        return SHISYBH;
    }

    public void setSHISYBH(String SHISYBH) {
        this.SHISYBH = SHISYBH;
    }

    public String getWJJCD() {
        return WJJCD;
    }

    public void setWJJCD(String WJJCD) {
        this.WJJCD = WJJCD;
    }

    public int getJSFZRBH() {
        return JSFZRBH;
    }

    public void setJSFZRBH(int JSFZRBH) {
        this.JSFZRBH = JSFZRBH;
    }

    public String getFMHZYSNL() {
        return FMHZYSNL;
    }

    public void setFMHZYSNL(String FMHZYSNL) {
        this.FMHZYSNL = FMHZYSNL;
    }

    public String getJSKD() {
        return JSKD;
    }

    public void setJSKD(String JSKD) {
        this.JSKD = JSKD;
    }

    public String getZXBZ() {
        return ZXBZ;
    }

    public void setZXBZ(String ZXBZ) {
        this.ZXBZ = ZXBZ;
    }

    public String getJLBBH() {
        return JLBBH;
    }

    public void setJLBBH(String JLBBH) {
        this.JLBBH = JLBBH;
    }

    public String getSNPZ() {
        return SNPZ;
    }

    public void setSNPZ(String SNPZ) {
        this.SNPZ = SNPZ;
    }

    public String getSHIYL() {
        return SHIYL;
    }

    public void setSHIYL(String SHIYL) {
        this.SHIYL = SHIYL;
    }

    public String getWTDWMC() {
        return WTDWMC;
    }

    public void setWTDWMC(String WTDWMC) {
        this.WTDWMC = WTDWMC;
    }

    public String getSKYHTJ() {
        return SKYHTJ;
    }

    public void setSKYHTJ(String SKYHTJ) {
        this.SKYHTJ = SKYHTJ;
    }

    public String getXHR() {
        return XHR;
    }

    public void setXHR(String XHR) {
        this.XHR = XHR;
    }

    public String getZHQD() {
        return ZHQD;
    }

    public void setZHQD(String ZHQD) {
        this.ZHQD = ZHQD;
    }

    public String getPZJCL() {
        return PZJCL;
    }

    public void setPZJCL(String PZJCL) {
        this.PZJCL = PZJCL;
    }

    public String getQFBZ() {
        return QFBZ;
    }

    public void setQFBZ(String QFBZ) {
        this.QFBZ = QFBZ;
    }

    public String getCHLZYSNL() {
        return CHLZYSNL;
    }

    public void setCHLZYSNL(String CHLZYSNL) {
        this.CHLZYSNL = CHLZYSNL;
    }

    public String getJZBZ() {
        return JZBZ;
    }

    public void setJZBZ(String JZBZ) {
        this.JZBZ = JZBZ;
    }

    public String getSYBH() {
        return SYBH;
    }

    public void setSYBH(String SYBH) {
        this.SYBH = SYBH;
    }

    public String getSHASYBH() {
        return SHASYBH;
    }

    public void setSHASYBH(String SHASYBH) {
        this.SHASYBH = SHASYBH;
    }

    public String getHNTDW() {
        return HNTDW;
    }

    public void setHNTDW(String HNTDW) {
        this.HNTDW = HNTDW;
    }

    public String getHZ1() {
        return HZ1;
    }

    public void setHZ1(String HZ1) {
        this.HZ1 = HZ1;
    }

    public String getCHLYL() {
        return CHLYL;
    }

    public void setCHLYL(String CHLYL) {
        this.CHLYL = CHLYL;
    }

    public Date getSYRQ() {
        return SYRQ;
    }

    public void setSYRQ(Date SYRQ) {
        this.SYRQ = SYRQ;
    }

    public String getYQBH() {
        return YQBH;
    }

    public void setYQBH(String YQBH) {
        this.YQBH = YQBH;
    }

    public String getSHIZDLJ() {
        return SHIZDLJ;
    }

    public void setSHIZDLJ(String SHIZDLJ) {
        this.SHIZDLJ = SHIZDLJ;
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

    public String getFMHMC() {
        return FMHMC;
    }

    public void setFMHMC(String FMHMC) {
        this.FMHMC = FMHMC;
    }

    public String getQFYJ() {
        return QFYJ;
    }

    public void setQFYJ(String QFYJ) {
        this.QFYJ = QFYJ;
    }

    public String getCLYJ() {
        return CLYJ;
    }

    public void setCLYJ(String CLYJ) {
        this.CLYJ = CLYJ;
    }

    public String getSJCC_K() {
        return SJCC_K;
    }

    public void setSJCC_K(String SJCC_K) {
        this.SJCC_K = SJCC_K;
    }

    public String getHZPJ() {
        return HZPJ;
    }

    public void setHZPJ(String HZPJ) {
        this.HZPJ = HZPJ;
    }

    public String getSGPHB() {
        return SGPHB;
    }

    public void setSGPHB(String SGPHB) {
        this.SGPHB = SGPHB;
    }

    public String getSHAPZ() {
        return SHAPZ;
    }

    public void setSHAPZ(String SHAPZ) {
        this.SHAPZ = SHAPZ;
    }

    public String getSYXMMC() {
        return SYXMMC;
    }

    public void setSYXMMC(String SYXMMC) {
        this.SYXMMC = SYXMMC;
    }

    public String getSYL() {
        return SYL;
    }

    public void setSYL(String SYL) {
        this.SYL = SYL;
    }

    public String getYQTLD() {
        return YQTLD;
    }

    public void setYQTLD(String YQTLD) {
        this.YQTLD = YQTLD;
    }

    public String getWJJYL() {
        return WJJYL;
    }

    public void setWJJYL(String WJJYL) {
        this.WJJYL = WJJYL;
    }

    public String getSGBW() {
        return SGBW;
    }

    public void setSGBW(String SGBW) {
        this.SGBW = SGBW;
    }

    public String getJL() {
        return JL;
    }

    public void setJL(String JL) {
        this.JL = JL;
    }

    public String getCHLMC() {
        return CHLMC;
    }

    public void setCHLMC(String CHLMC) {
        this.CHLMC = CHLMC;
    }

    public String getPZJMC() {
        return PZJMC;
    }

    public void setPZJMC(String PZJMC) {
        this.PZJMC = PZJMC;
    }

    public String getSHAXDMS() {
        return SHAXDMS;
    }

    public void setSHAXDMS(String SHAXDMS) {
        this.SHAXDMS = SHAXDMS;
    }

    public String getWTDBH() {
        return WTDBH;
    }

    public void setWTDBH(String WTDBH) {
        this.WTDBH = WTDBH;
    }

    public String getZXGC() {
        return ZXGC;
    }

    public void setZXGC(String ZXGC) {
        this.ZXGC = ZXGC;
    }

    public String getSJCC_G() {
        return SJCC_G;
    }

    public void setSJCC_G(String SJCC_G) {
        this.SJCC_G = SJCC_G;
    }

    public String getSHB() {
        return SHB;
    }

    public void setSHB(String SHB) {
        this.SHB = SHB;
    }

    public String getSNBH() {
        return SNBH;
    }

    public void setSNBH(String SNBH) {
        this.SNBH = SNBH;
    }

    public String getBGBBH() {
        return BGBBH;
    }

    public void setBGBBH(String BGBBH) {
        this.BGBBH = BGBBH;
    }

    public String getWTDWBH() {
        return WTDWBH;
    }

    public void setWTDWBH(String WTDWBH) {
        this.WTDWBH = WTDWBH;
    }

    public String getSYWTR() {
        return SYWTR;
    }

    public void setSYWTR(String SYWTR) {
        this.SYWTR = SYWTR;
    }

    public String getSHAYL() {
        return SHAYL;
    }

    public void setSHAYL(String SHAYL) {
        this.SHAYL = SHAYL;
    }

    public String getPZJZYSNL() {
        return PZJZYSNL;
    }

    public void setPZJZYSNL(String PZJZYSNL) {
        this.PZJZYSNL = PZJZYSNL;
    }

    public String getSYMC() {
        return SYMC;
    }

    public void setSYMC(String SYMC) {
        this.SYMC = SYMC;
    }

    public String getCHLCD() {
        return CHLCD;
    }

    public void setCHLCD(String CHLCD) {
        this.CHLCD = CHLCD;
    }

    public String getXHBZ() {
        return XHBZ;
    }

    public void setXHBZ(String XHBZ) {
        this.XHBZ = XHBZ;
    }

    public String getSNSYBH() {
        return SNSYBH;
    }

    public void setSNSYBH(String SNSYBH) {
        this.SNSYBH = SNSYBH;
    }

    public String getSHICD() {
        return SHICD;
    }

    public void setSHICD(String SHICD) {
        this.SHICD = SHICD;
    }

    public String getWJJCL() {
        return WJJCL;
    }

    public void setWJJCL(String WJJCL) {
        this.WJJCL = WJJCL;
    }

    public String getPHBBH() {
        return PHBBH;
    }

    public void setPHBBH(String PHBBH) {
        this.PHBBH = PHBBH;
    }

    public String getHZ2() {
        return HZ2;
    }

    public void setHZ2(String HZ2) {
        this.HZ2 = HZ2;
    }

    public String getSJLQ() {
        return SJLQ;
    }

    public void setSJLQ(String SJLQ) {
        this.SJLQ = SJLQ;
    }

    public String getSHIYBH() {
        return SHIYBH;
    }

    public void setSHIYBH(String SHIYBH) {
        this.SHIYBH = SHIYBH;
    }

    public Date getYQSYRQ() {
        return YQSYRQ;
    }

    public void setYQSYRQ(Date YQSYRQ) {
        this.YQSYRQ = YQSYRQ;
    }

    public String getGCBH() {
        return GCBH;
    }

    public void setGCBH(String GCBH) {
        this.GCBH = GCBH;
    }

    public String getSHIHNL() {
        return SHIHNL;
    }

    public void setSHIHNL(String SHIHNL) {
        this.SHIHNL = SHIHNL;
    }

    public String getJSFZR() {
        return JSFZR;
    }

    public void setJSFZR(String JSFZR) {
        this.JSFZR = JSFZR;
    }

    public String getSYR() {
        return SYR;
    }

    public void setSYR(String SYR) {
        this.SYR = SYR;
    }

    public String getWJJZYSNL() {
        return WJJZYSNL;
    }

    public void setWJJZYSNL(String WJJZYSNL) {
        this.WJJZYSNL = WJJZYSNL;
    }

    public String getSJCC_C() {
        return SJCC_C;
    }

    public void setSJCC_C(String SJCC_C) {
        this.SJCC_C = SJCC_C;
    }

    public int getWTZH() {
        return WTZH;
    }

    public void setWTZH(int WTZH) {
        this.WTZH = WTZH;
    }

    public String getSHACD() {
        return SHACD;
    }

    public void setSHACD(String SHACD) {
        this.SHACD = SHACD;
    }

    public String getSYXMDM() {
        return SYXMDM;
    }

    public void setSYXMDM(String SYXMDM) {
        this.SYXMDM = SYXMDM;
    }

    public String getSCTLD() {
        return SCTLD;
    }

    public void setSCTLD(String SCTLD) {
        this.SCTLD = SCTLD;
    }

    public Date getSKSDRQ() {
        return SKSDRQ;
    }

    public void setSKSDRQ(Date SKSDRQ) {
        this.SKSDRQ = SKSDRQ;
    }

    public Date getZMRQ() {
        return ZMRQ;
    }

    public void setZMRQ(Date ZMRQ) {
        this.ZMRQ = ZMRQ;
    }

    public String getSJQD() {
        return SJQD;
    }

    public void setSJQD(String SJQD) {
        this.SJQD = SJQD;
    }

    public String getKZQD() {
        return KZQD;
    }

    public void setKZQD(String KZQD) {
        this.KZQD = KZQD;
    }

    public Date getBGRQ() {
        return BGRQ;
    }

    public void setBGRQ(Date BGRQ) {
        this.BGRQ = BGRQ;
    }

    public String getPZJCD() {
        return PZJCD;
    }

    public void setPZJCD(String PZJCD) {
        this.PZJCD = PZJCD;
    }

    public int getXHRBH() {
        return XHRBH;
    }

    public void setXHRBH(int XHRBH) {
        this.XHRBH = XHRBH;
    }

    public String getSL() {
        return SL;
    }

    public void setSL(String SL) {
        this.SL = SL;
    }

    public String getSHAHNL() {
        return SHAHNL;
    }

    public void setSHAHNL(String SHAHNL) {
        this.SHAHNL = SHAHNL;
    }

    public int getDWDM() {
        return DWDM;
    }

    public void setDWDM(int DWDM) {
        this.DWDM = DWDM;
    }

    public String getHGBZ() {
        return HGBZ;
    }

    public void setHGBZ(String HGBZ) {
        this.HGBZ = HGBZ;
    }

    public String getSNCB() {
        return SNCB;
    }

    public void setSNCB(String SNCB) {
        this.SNCB = SNCB;
    }

    public String getSJBH() {
        return SJBH;
    }

    public void setSJBH(String SJBH) {
        this.SJBH = SJBH;
    }

    public String getFMHYL() {
        return FMHYL;
    }

    public void setFMHYL(String FMHYL) {
        this.FMHYL = FMHYL;
    }

    public String getFMHCD() {
        return FMHCD;
    }

    public void setFMHCD(String FMHCD) {
        this.FMHCD = FMHCD;
    }

    public String getWJJMC() {
        return WJJMC;
    }

    public void setWJJMC(String WJJMC) {
        this.WJJMC = WJJMC;
    }

    public String getBZ() {
        return BZ;
    }

    public void setBZ(String BZ) {
        this.BZ = BZ;
    }

    public String getSHIPZ() {
        return SHIPZ;
    }

    public void setSHIPZ(String SHIPZ) {
        this.SHIPZ = SHIPZ;
    }

    public String getXHYJ() {
        return XHYJ;
    }

    public void setXHYJ(String XHYJ) {
        this.XHYJ = XHYJ;
    }
}
