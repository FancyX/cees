package com.fancyx.cees.domain.busi;

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
}
