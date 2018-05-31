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
    private String kynumber;
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
    //委托单编号
    private String WTDBH;
    //单位代码
    private int DWDM;
    //试验编号
    private String SYBH;
    //试样编号
    private String SHIYBH;
    //试验项目代码
    private String SYXMDM;
    //试验项目名称
    private String SYXMMC;
    //委托单位编号
    private String WTDWBH;
    //委托单位名称
    private String WTDWMC;
    //工程编号
    private String GCBH;
    //工程名称
    private String GCMC;
    //仪器编号
    private String YQBH;
    //施工部位
    private String SGBW;
    //设计强度
    private String SJQD;
    //拟配强度
    private String NPQD;
    //要求坍落度
    private String YQTLD;
    //实测坍落度
    private String SCTLD;
    //水泥品种
    private String SNPZ;
    //水泥标号
    private String SNBH;
    //水泥厂别
    private String SNCB;
    //水泥出厂日期
    private String SNCCRQ;
    //水泥试验编号
    private String SNSYBH;
    //砂子产地
    private String SHACD;
    //砂子品种
    private String SHAPZ;
    //砂子细度模数
    private String SHAXDMS;
    //砂子含泥量
    private String SHAHNL;
    //砂子试验编号
    private String SHASYBH;
    //石子产地
    private String SHICD;
    //石子品种
    private String SHIPZ;
    //石子最大粒径
    private String SHIZDLJ;
    //石子含泥量
    private String SHIHNL;
    //石子试验编号
    private String SHISYBH;
    //掺合料名称
    private String CHLMC;
    //掺合料产地
    private String CHLCD;
    //掺合料占水泥用量
    private String CHLZYSNL;
    //粉煤灰名称
    private String FMHMC;
    //粉煤灰产地
    private String FMHCD;
    //粉煤灰占水泥用量
    private String FMHZYSNL;
    //外加剂2名称
    private String PZJMC;
    //外加剂2产地
    private String PZJCD;
    //外加剂2掺量
    private String PZJCL;
    //外加剂2占水泥用量
    private String PZJZYSNL;
    //外加剂名称
    private String WJJMC;
    //外加剂产地
    private String WJJCD;
    //外加剂掺量
    private String WJJCL;
    //外加剂占水泥用量
    private String WJJZYSNL;
    private String SGPHB;
    //水灰比
    private String SHB;
    //砂率
    private String SL;
    //混凝土单位
    private String HNTDW;
    //配合比编号
    private String PHBBH;
    //水泥用量
    private String SNYL;
    //水用量
    private String SYL;
    //砂子用量
    private String SHAYL;
    //石子用量
    private String SHIYL;
    //掺和料用量
    private String CHLYL;
    //粉煤灰用量
    private String FMHYL;
    //外加剂2用量
    private String PZJYL;
    //外加剂用量
    private String WJJYL;
    //制模日期
    private Date ZMRQ;
    //要求龄期
    private String YQLQ;
    //要求试验日期
    private Date YQSYRQ;
    //试块收到日期
    private Date SKSDRQ;
    //试块养护条件
    private String SKYHTJ;
    //委托人
    private String SYWTR;
    //试件编号
    private String SJBH;
    //试验日期
    private Date SYRQ;
    //实际龄期
    private String SJLQ;
    //试件尺寸
    private String SJCC;
    //受压面积
    private String SYMJ;
    //单块1
    private String HZ1;
    //单块2
    private String HZ2;
    //单块3
    private String HZ3;
    //单块平均
    private String HZPJ;
    //抗压强度
    private String KYQD;
    //折合强度
    private String ZHQD;
    //达到强度
    private String DDQD;
    //备注
    private String BZ;
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
    //试验人编号
    private int SYRBH;
    //试验人
    private String SYR;
    //报告日期
    private Date BGRQ;
    //结论
    private String JL;
    //试验名称
    private String SYMC;
    //签发备注
    private String QFBZ;
    //签发意见
    private String QFYJ;
    //执行规程
    private String ZXGC;
    //执行标准
    private String ZXBZ;
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
