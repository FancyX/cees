package com.fancyx.cees.domain.busi;

import com.fancyx.cees.CustomDateSerializer;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 啊Q on 2018-07-16.
 */
public class CEES_GJYC  implements Serializable {
    //钢筋原材id
    private int gjycid;
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
    //钢筋原材编号
    private String gjycnumber;
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
    //试件代表数量
    private String SJDBSL;
    //来样日期
    private Date LYRQ;
    //拉力试验编号
    private String SYBH1;
    //冷热弯曲试验编号
    private String SYBH2;
    //工程名称
    private String GCMC;
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
    //公称面积
    private String HJMJ;
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
    //屈服拉力1
    private String QFLL1;
    //屈服拉力2
    private String QFLL2;
    //屈服拉力3
    private String QFLL3;
    //屈服拉力4
    private String QFLL4;
    //屈服拉力5
    private String QFLL5;
    //屈服拉力6
    private String QFLL6;
    //屈服强度1
    private String QFQD1;
    //屈服强度2
    private String QFQD2;
    //屈服强度3
    private String QFQD3;
    //屈服强度4
    private String QFQD4;
    //屈服强度5
    private String QFQD5;
    //屈服强度6
    private String QFQD6;
    //极限拉力1
    private String JXLL1;
    //极限拉力2
    private String JXLL2;
    //极限拉力3
    private String JXLL3;
    //极限拉力4
    private String JXLL4;
    //极限拉力5
    private String JXLL5;
    //极限拉力6
    private String JXLL6;
    //极限强度1
    private String JXQD1;
    //极限强度2
    private String JXQD2;
    //极限强度3
    private String JXQD3;
    //极限强度4
    private String JXQD4;
    //极限强度5
    private String JXQD5;
    //极限强度6
    private String JXQD6;
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
    //标距1
    private String BJ1;
    //标距2
    private String BJ2;
    //标距3
    private String BJ3;
    //标距4
    private String BJ4;
    //标距5
    private String BJ5;
    //标距6
    private String BJ6;
    //伸长后1
    private String SCH1;
    //伸长后2
    private String SCH2;
    //伸长后3
    private String SCH3;
    //伸长后4
    private String SCH4;
    //伸长后5
    private String SCH5;
    //伸长后6
    private String SCH6;
    //伸长率1
    private String SCL1;
    //伸长率2
    private String SCL2;
    //伸长率3
    private String SCL3;
    //伸长率4
    private String SCL4;
    //伸长率5
    private String SCL5;
    //伸长率6
    private String SCL6;
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
    //评定结果1
    private String PDJG1;
    //评定结果2
    private String PDJG2;
    //评定结果3
    private String PDJG3;
    //评定结果4
    private String PDJG4;
    //评定结果5
    private String PDJG5;
    //评定结果6
    private String PDJG6;
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
    //校核备注
    private String XHBZ;
    //校核结论
    private String XHYJ;
    //签发备注
    private String QFBZ;
    //签发结果
    private String QFYJ;
    //试验人编号
    private int SYRBH;
    //报告日期
    private Date BGRQ;
    //执行规程1
    private String ZXGC1;
    //执行备注1
    private String ZXBZ1;
    //执行规程2
    private String ZXGC2;
    //执行备注2
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
    //记录表编号
    private String JLBBH;
    //报告表编号
    private String BGBBH;
    private String HJTJ;
    private String HJ1;
    private String HJ2;
    private String DBSL;

    public int getGjycid() {
        return gjycid;
    }

    public void setGjycid(int gjycid) {
        this.gjycid = gjycid;
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

    public String getGjycnumber() {
        return gjycnumber;
    }

    public void setGjycnumber(String gjycnumber) {
        this.gjycnumber = gjycnumber;
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

    public String getSJDBSL() {
        return SJDBSL;
    }

    public void setSJDBSL(String SJDBSL) {
        this.SJDBSL = SJDBSL;
    }

    @JsonSerialize(using = CustomDateSerializer.class)
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

    public String getGCMC() {
        return GCMC;
    }

    public void setGCMC(String GCMC) {
        this.GCMC = GCMC;
    }

    public String getYT() {
        return YT;
    }

    public void setYT(String YT) {
        this.YT = YT;
    }

    @JsonSerialize(using = CustomDateSerializer.class)
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

    public String getHJMJ() {
        return HJMJ;
    }

    public void setHJMJ(String HJMJ) {
        this.HJMJ = HJMJ;
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

    public String getQFLL1() {
        return QFLL1;
    }

    public void setQFLL1(String QFLL1) {
        this.QFLL1 = QFLL1;
    }

    public String getQFLL2() {
        return QFLL2;
    }

    public void setQFLL2(String QFLL2) {
        this.QFLL2 = QFLL2;
    }

    public String getQFLL3() {
        return QFLL3;
    }

    public void setQFLL3(String QFLL3) {
        this.QFLL3 = QFLL3;
    }

    public String getQFLL4() {
        return QFLL4;
    }

    public void setQFLL4(String QFLL4) {
        this.QFLL4 = QFLL4;
    }

    public String getQFLL5() {
        return QFLL5;
    }

    public void setQFLL5(String QFLL5) {
        this.QFLL5 = QFLL5;
    }

    public String getQFLL6() {
        return QFLL6;
    }

    public void setQFLL6(String QFLL6) {
        this.QFLL6 = QFLL6;
    }

    public String getQFQD1() {
        return QFQD1;
    }

    public void setQFQD1(String QFQD1) {
        this.QFQD1 = QFQD1;
    }

    public String getQFQD2() {
        return QFQD2;
    }

    public void setQFQD2(String QFQD2) {
        this.QFQD2 = QFQD2;
    }

    public String getQFQD3() {
        return QFQD3;
    }

    public void setQFQD3(String QFQD3) {
        this.QFQD3 = QFQD3;
    }

    public String getQFQD4() {
        return QFQD4;
    }

    public void setQFQD4(String QFQD4) {
        this.QFQD4 = QFQD4;
    }

    public String getQFQD5() {
        return QFQD5;
    }

    public void setQFQD5(String QFQD5) {
        this.QFQD5 = QFQD5;
    }

    public String getQFQD6() {
        return QFQD6;
    }

    public void setQFQD6(String QFQD6) {
        this.QFQD6 = QFQD6;
    }

    public String getJXLL1() {
        return JXLL1;
    }

    public void setJXLL1(String JXLL1) {
        this.JXLL1 = JXLL1;
    }

    public String getJXLL2() {
        return JXLL2;
    }

    public void setJXLL2(String JXLL2) {
        this.JXLL2 = JXLL2;
    }

    public String getJXLL3() {
        return JXLL3;
    }

    public void setJXLL3(String JXLL3) {
        this.JXLL3 = JXLL3;
    }

    public String getJXLL4() {
        return JXLL4;
    }

    public void setJXLL4(String JXLL4) {
        this.JXLL4 = JXLL4;
    }

    public String getJXLL5() {
        return JXLL5;
    }

    public void setJXLL5(String JXLL5) {
        this.JXLL5 = JXLL5;
    }

    public String getJXLL6() {
        return JXLL6;
    }

    public void setJXLL6(String JXLL6) {
        this.JXLL6 = JXLL6;
    }

    public String getJXQD1() {
        return JXQD1;
    }

    public void setJXQD1(String JXQD1) {
        this.JXQD1 = JXQD1;
    }

    public String getJXQD2() {
        return JXQD2;
    }

    public void setJXQD2(String JXQD2) {
        this.JXQD2 = JXQD2;
    }

    public String getJXQD3() {
        return JXQD3;
    }

    public void setJXQD3(String JXQD3) {
        this.JXQD3 = JXQD3;
    }

    public String getJXQD4() {
        return JXQD4;
    }

    public void setJXQD4(String JXQD4) {
        this.JXQD4 = JXQD4;
    }

    public String getJXQD5() {
        return JXQD5;
    }

    public void setJXQD5(String JXQD5) {
        this.JXQD5 = JXQD5;
    }

    public String getJXQD6() {
        return JXQD6;
    }

    public void setJXQD6(String JXQD6) {
        this.JXQD6 = JXQD6;
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

    public String getBJ1() {
        return BJ1;
    }

    public void setBJ1(String BJ1) {
        this.BJ1 = BJ1;
    }

    public String getBJ2() {
        return BJ2;
    }

    public void setBJ2(String BJ2) {
        this.BJ2 = BJ2;
    }

    public String getBJ3() {
        return BJ3;
    }

    public void setBJ3(String BJ3) {
        this.BJ3 = BJ3;
    }

    public String getBJ4() {
        return BJ4;
    }

    public void setBJ4(String BJ4) {
        this.BJ4 = BJ4;
    }

    public String getBJ5() {
        return BJ5;
    }

    public void setBJ5(String BJ5) {
        this.BJ5 = BJ5;
    }

    public String getBJ6() {
        return BJ6;
    }

    public void setBJ6(String BJ6) {
        this.BJ6 = BJ6;
    }

    public String getSCH1() {
        return SCH1;
    }

    public void setSCH1(String SCH1) {
        this.SCH1 = SCH1;
    }

    public String getSCH2() {
        return SCH2;
    }

    public void setSCH2(String SCH2) {
        this.SCH2 = SCH2;
    }

    public String getSCH3() {
        return SCH3;
    }

    public void setSCH3(String SCH3) {
        this.SCH3 = SCH3;
    }

    public String getSCH4() {
        return SCH4;
    }

    public void setSCH4(String SCH4) {
        this.SCH4 = SCH4;
    }

    public String getSCH5() {
        return SCH5;
    }

    public void setSCH5(String SCH5) {
        this.SCH5 = SCH5;
    }

    public String getSCH6() {
        return SCH6;
    }

    public void setSCH6(String SCH6) {
        this.SCH6 = SCH6;
    }

    public String getSCL1() {
        return SCL1;
    }

    public void setSCL1(String SCL1) {
        this.SCL1 = SCL1;
    }

    public String getSCL2() {
        return SCL2;
    }

    public void setSCL2(String SCL2) {
        this.SCL2 = SCL2;
    }

    public String getSCL3() {
        return SCL3;
    }

    public void setSCL3(String SCL3) {
        this.SCL3 = SCL3;
    }

    public String getSCL4() {
        return SCL4;
    }

    public void setSCL4(String SCL4) {
        this.SCL4 = SCL4;
    }

    public String getSCL5() {
        return SCL5;
    }

    public void setSCL5(String SCL5) {
        this.SCL5 = SCL5;
    }

    public String getSCL6() {
        return SCL6;
    }

    public void setSCL6(String SCL6) {
        this.SCL6 = SCL6;
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

    public String getPDJG1() {
        return PDJG1;
    }

    public void setPDJG1(String PDJG1) {
        this.PDJG1 = PDJG1;
    }

    public String getPDJG2() {
        return PDJG2;
    }

    public void setPDJG2(String PDJG2) {
        this.PDJG2 = PDJG2;
    }

    public String getPDJG3() {
        return PDJG3;
    }

    public void setPDJG3(String PDJG3) {
        this.PDJG3 = PDJG3;
    }

    public String getPDJG4() {
        return PDJG4;
    }

    public void setPDJG4(String PDJG4) {
        this.PDJG4 = PDJG4;
    }

    public String getPDJG5() {
        return PDJG5;
    }

    public void setPDJG5(String PDJG5) {
        this.PDJG5 = PDJG5;
    }

    public String getPDJG6() {
        return PDJG6;
    }

    public void setPDJG6(String PDJG6) {
        this.PDJG6 = PDJG6;
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

    @JsonSerialize(using = CustomDateSerializer.class)
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

    public String getZXBZ1() {
        return ZXBZ1;
    }

    public void setZXBZ1(String ZXBZ1) {
        this.ZXBZ1 = ZXBZ1;
    }

    public String getZXGC2() {
        return ZXGC2;
    }

    public void setZXGC2(String ZXGC2) {
        this.ZXGC2 = ZXGC2;
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

    public String getHJTJ() {
        return HJTJ;
    }

    public void setHJTJ(String HJTJ) {
        this.HJTJ = HJTJ;
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

    public String getDBSL() {
        return DBSL;
    }

    public void setDBSL(String DBSL) {
        this.DBSL = DBSL;
    }
}
