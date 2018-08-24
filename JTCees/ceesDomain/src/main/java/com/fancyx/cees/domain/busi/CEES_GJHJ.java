package com.fancyx.cees.domain.busi;

import java.util.Date;

/**
 * Created by 啊Q on 2018-07-19.
 */
public class CEES_GJHJ {

    //钢筋焊接id
    private int gjhjid;
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
    //钢筋焊接编号
    private String gjhjnumber;
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
    //钢筋种类
    private String GJZL;
    //钢筋产地
    private String GJCD;
    //来样日期
    private Date LYRQ;
    //试验编号
    private String SYBH;
    //工程名称
    private String GCMC;
    //代表焊接数量
    private String DBHJSL;
    //部位
    private String YT;
    //试验日期
    private Date SYRQ;
    //试验仪器编号
    private String YQBH;
    //牌号
    private String PH;
    //级别
    private String JB;
    //规格
    private String GG;
    //规格1
    private String GG1;
    //横截面积
    private String HJMJ;
    //横截面积1
    private String HJMJ1;
    //焊接类型及接头方式
    private String HJLX;
    //原材试验编号
    private String YCLSYBH;
    //焊条型号
    private String HTXH;
    //焊接人
    private String HJR;
    //试件编号1
    private String SJBH1;
    //试件编号2
    private String SJBH2;
    //试件编号3
    private String SJBH3;
    //试件编号4
    private String SJBH4;
    //试件编号5
    private String SJBH5;
    //试件编号6
    private String SJBH6;
    //拉力1
    private String LL1;
    //拉力2
    private String LL2;
    //拉力3
    private String LL3;
    //拉力4
    private String LL4;
    //拉力5
    private String LL5;
    //拉力6
    private String LL6;
    //强度1
    private String QD1;
    //强度2
    private String QD2;
    //强度3
    private String QD3;
    //强度4
    private String QD4;
    //强度5
    private String QD5;
    //强度6
    private String QD6;
    //变形或断裂位置1
    private String BXHDLWZ1;
    //变形或断裂位置2
    private String BXHDLWZ2;
    //变形或断裂位置3
    private String BXHDLWZ3;
    //变形或断裂位置4
    private String BXHDLWZ4;
    //变形或断裂位置5
    private String BXHDLWZ5;
    //变形或断裂位置6
    private String BXHDLWZ6;
    //弯曲直径1
    private String WXZJ1;
    //弯曲直径2
    private String WXZJ2;
    //弯曲直径3
    private String WXZJ3;
    //弯曲直径4
    private String WXZJ4;
    //弯曲直径5
    private String WXZJ5;
    //弯曲直径6
    private String WXZJ6;
    //角度1
    private String JD1;
    //角度2
    private String JD2;
    //角度3
    private String JD3;
    //角度4
    private String JD4;
    //角度5
    private String JD5;
    //角度6
    private String JD6;
    //评定1
    private String PD1;
    //评定2
    private String PD2;
    //评定3
    private String PD3;
    //评定4
    private String PD4;
    //评定5
    private String PD5;
    //评定6
    private String PD6;
    //结论
    private String JL;
    //备注
    private String BZ;
    //校核人
    private String XHR;
    //试验人
    private String SYR;
    //单位代码
    private int DWDM;
    //试验项目代码
    private String SYXMDM;
    //试验项目名称
    private String SYXMMC;
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
    private String HJ1;
    private String HJ2;

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

    public Date getLYRQ() {
        return LYRQ;
    }

    public void setLYRQ(Date LYRQ) {
        this.LYRQ = LYRQ;
    }

    public String getSYBH() {
        return SYBH;
    }

    public void setSYBH(String SYBH) {
        this.SYBH = SYBH;
    }

    public String getGCMC() {
        return GCMC;
    }

    public void setGCMC(String GCMC) {
        this.GCMC = GCMC;
    }

    public String getDBHJSL() {
        return DBHJSL;
    }

    public void setDBHJSL(String DBHJSL) {
        this.DBHJSL = DBHJSL;
    }

    public String getYT() {
        return YT;
    }

    public void setYT(String YT) {
        this.YT = YT;
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

    public String getPH() {
        return PH;
    }

    public void setPH(String PH) {
        this.PH = PH;
    }

    public String getJB() {
        return JB;
    }

    public void setJB(String JB) {
        this.JB = JB;
    }

    public String getGG() {
        return GG;
    }

    public void setGG(String GG) {
        this.GG = GG;
    }

    public String getGG1() {
        return GG1;
    }

    public void setGG1(String GG1) {
        this.GG1 = GG1;
    }

    public String getHJMJ() {
        return HJMJ;
    }

    public void setHJMJ(String HJMJ) {
        this.HJMJ = HJMJ;
    }

    public String getHJMJ1() {
        return HJMJ1;
    }

    public void setHJMJ1(String HJMJ1) {
        this.HJMJ1 = HJMJ1;
    }

    public String getHJLX() {
        return HJLX;
    }

    public void setHJLX(String HJLX) {
        this.HJLX = HJLX;
    }

    public String getYCLSYBH() {
        return YCLSYBH;
    }

    public void setYCLSYBH(String YCLSYBH) {
        this.YCLSYBH = YCLSYBH;
    }

    public String getHTXH() {
        return HTXH;
    }

    public void setHTXH(String HTXH) {
        this.HTXH = HTXH;
    }

    public String getHJR() {
        return HJR;
    }

    public void setHJR(String HJR) {
        this.HJR = HJR;
    }

    public String getSJBH1() {
        return SJBH1;
    }

    public void setSJBH1(String SJBH1) {
        this.SJBH1 = SJBH1;
    }

    public String getSJBH2() {
        return SJBH2;
    }

    public void setSJBH2(String SJBH2) {
        this.SJBH2 = SJBH2;
    }

    public String getSJBH3() {
        return SJBH3;
    }

    public void setSJBH3(String SJBH3) {
        this.SJBH3 = SJBH3;
    }

    public String getSJBH4() {
        return SJBH4;
    }

    public void setSJBH4(String SJBH4) {
        this.SJBH4 = SJBH4;
    }

    public String getSJBH5() {
        return SJBH5;
    }

    public void setSJBH5(String SJBH5) {
        this.SJBH5 = SJBH5;
    }

    public String getSJBH6() {
        return SJBH6;
    }

    public void setSJBH6(String SJBH6) {
        this.SJBH6 = SJBH6;
    }

    public String getLL1() {
        return LL1;
    }

    public void setLL1(String LL1) {
        this.LL1 = LL1;
    }

    public String getLL2() {
        return LL2;
    }

    public void setLL2(String LL2) {
        this.LL2 = LL2;
    }

    public String getLL3() {
        return LL3;
    }

    public void setLL3(String LL3) {
        this.LL3 = LL3;
    }

    public String getLL4() {
        return LL4;
    }

    public void setLL4(String LL4) {
        this.LL4 = LL4;
    }

    public String getLL5() {
        return LL5;
    }

    public void setLL5(String LL5) {
        this.LL5 = LL5;
    }

    public String getLL6() {
        return LL6;
    }

    public void setLL6(String LL6) {
        this.LL6 = LL6;
    }

    public String getQD1() {
        return QD1;
    }

    public void setQD1(String QD1) {
        this.QD1 = QD1;
    }

    public String getQD2() {
        return QD2;
    }

    public void setQD2(String QD2) {
        this.QD2 = QD2;
    }

    public String getQD3() {
        return QD3;
    }

    public void setQD3(String QD3) {
        this.QD3 = QD3;
    }

    public String getQD4() {
        return QD4;
    }

    public void setQD4(String QD4) {
        this.QD4 = QD4;
    }

    public String getQD5() {
        return QD5;
    }

    public void setQD5(String QD5) {
        this.QD5 = QD5;
    }

    public String getQD6() {
        return QD6;
    }

    public void setQD6(String QD6) {
        this.QD6 = QD6;
    }

    public String getBXHDLWZ1() {
        return BXHDLWZ1;
    }

    public void setBXHDLWZ1(String BXHDLWZ1) {
        this.BXHDLWZ1 = BXHDLWZ1;
    }

    public String getBXHDLWZ2() {
        return BXHDLWZ2;
    }

    public void setBXHDLWZ2(String BXHDLWZ2) {
        this.BXHDLWZ2 = BXHDLWZ2;
    }

    public String getBXHDLWZ3() {
        return BXHDLWZ3;
    }

    public void setBXHDLWZ3(String BXHDLWZ3) {
        this.BXHDLWZ3 = BXHDLWZ3;
    }

    public String getBXHDLWZ4() {
        return BXHDLWZ4;
    }

    public void setBXHDLWZ4(String BXHDLWZ4) {
        this.BXHDLWZ4 = BXHDLWZ4;
    }

    public String getBXHDLWZ5() {
        return BXHDLWZ5;
    }

    public void setBXHDLWZ5(String BXHDLWZ5) {
        this.BXHDLWZ5 = BXHDLWZ5;
    }

    public String getBXHDLWZ6() {
        return BXHDLWZ6;
    }

    public void setBXHDLWZ6(String BXHDLWZ6) {
        this.BXHDLWZ6 = BXHDLWZ6;
    }

    public String getWXZJ1() {
        return WXZJ1;
    }

    public void setWXZJ1(String WXZJ1) {
        this.WXZJ1 = WXZJ1;
    }

    public String getWXZJ2() {
        return WXZJ2;
    }

    public void setWXZJ2(String WXZJ2) {
        this.WXZJ2 = WXZJ2;
    }

    public String getWXZJ3() {
        return WXZJ3;
    }

    public void setWXZJ3(String WXZJ3) {
        this.WXZJ3 = WXZJ3;
    }

    public String getWXZJ4() {
        return WXZJ4;
    }

    public void setWXZJ4(String WXZJ4) {
        this.WXZJ4 = WXZJ4;
    }

    public String getWXZJ5() {
        return WXZJ5;
    }

    public void setWXZJ5(String WXZJ5) {
        this.WXZJ5 = WXZJ5;
    }

    public String getWXZJ6() {
        return WXZJ6;
    }

    public void setWXZJ6(String WXZJ6) {
        this.WXZJ6 = WXZJ6;
    }

    public String getJD1() {
        return JD1;
    }

    public void setJD1(String JD1) {
        this.JD1 = JD1;
    }

    public String getJD2() {
        return JD2;
    }

    public void setJD2(String JD2) {
        this.JD2 = JD2;
    }

    public String getJD3() {
        return JD3;
    }

    public void setJD3(String JD3) {
        this.JD3 = JD3;
    }

    public String getJD4() {
        return JD4;
    }

    public void setJD4(String JD4) {
        this.JD4 = JD4;
    }

    public String getJD5() {
        return JD5;
    }

    public void setJD5(String JD5) {
        this.JD5 = JD5;
    }

    public String getJD6() {
        return JD6;
    }

    public void setJD6(String JD6) {
        this.JD6 = JD6;
    }

    public String getPD1() {
        return PD1;
    }

    public void setPD1(String PD1) {
        this.PD1 = PD1;
    }

    public String getPD2() {
        return PD2;
    }

    public void setPD2(String PD2) {
        this.PD2 = PD2;
    }

    public String getPD3() {
        return PD3;
    }

    public void setPD3(String PD3) {
        this.PD3 = PD3;
    }

    public String getPD4() {
        return PD4;
    }

    public void setPD4(String PD4) {
        this.PD4 = PD4;
    }

    public String getPD5() {
        return PD5;
    }

    public void setPD5(String PD5) {
        this.PD5 = PD5;
    }

    public String getPD6() {
        return PD6;
    }

    public void setPD6(String PD6) {
        this.PD6 = PD6;
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

    public String getXHR() {
        return XHR;
    }

    public void setXHR(String XHR) {
        this.XHR = XHR;
    }

    public String getSYR() {
        return SYR;
    }

    public void setSYR(String SYR) {
        this.SYR = SYR;
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

    public String getHJ1() {
        return HJ1;
    }

    public void setHJ1(String HJ1) {
        this.HJ1 = HJ1;
    }

    public String getHJ2() {
        return HJ2;
    }

    public void setHJ2(String HJ2) {
        this.HJ2 = HJ2;
    }
}
