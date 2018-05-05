package com.fancyx.cees.domain.busi;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-05.
 */
public class CEES_Shouquan implements Serializable {

    private static final long serialVersionUID = 1L;

    //授权ID
    private  int  SQID;
    //授权编号
    private  String  SQBH;
    //序号
    private  int  XH;
    //工程编号
    private  String  GCBH;
    //工程名称
    private  String  GCMC;
    //工程简称
    private  String  GCJC;

    //委托单位编号
    private  String  WTDWBH;
    //委托单位名称
    private  String  WTDWMC;
    //委托人
    private  String  WTR;
    //委托人手机号
    private  String  WTRTEL;
    //授权文件
    private  String  SHQWJ;
    //授权日期
    private  String  SHQRQ;
    //授权人
    private  String  SHQR;
    //已读标志
    private  int  YDBZ;
    //已读时间
    private  String  YDSJ;

    public int getSQID() {
        return SQID;
    }

    public void setSQID(int SQID) {
        this.SQID = SQID;
    }

    public String getSQBH() {
        return SQBH;
    }

    public void setSQBH(String SQBH) {
        this.SQBH = SQBH;
    }

    public int getXH() {
        return XH;
    }

    public void setXH(int XH) {
        this.XH = XH;
    }

    public String getGCBH() {
        return GCBH;
    }

    public void setGCBH(String GCBH) {
        this.GCBH = GCBH;
    }

    public String getGCMC() {
        return GCMC;
    }

    public void setGCMC(String GCMC) {
        this.GCMC = GCMC;
    }

    public String getGCJC() {
        return GCJC;
    }

    public void setGCJC(String GCJC) {
        this.GCJC = GCJC;
    }

    public String getWTDWBH() {
        return WTDWBH;
    }

    public void setWTDWBH(String WTDWBH) {
        this.WTDWBH = WTDWBH;
    }

    public String getWTDWMC() {
        return WTDWMC;
    }

    public void setWTDWMC(String WTDWMC) {
        this.WTDWMC = WTDWMC;
    }

    public String getWTR() {
        return WTR;
    }

    public void setWTR(String WTR) {
        this.WTR = WTR;
    }

    public String getWTRTEL() {
        return WTRTEL;
    }

    public void setWTRTEL(String WTRTEL) {
        this.WTRTEL = WTRTEL;
    }

    public String getSHQWJ() {
        return SHQWJ;
    }

    public void setSHQWJ(String SHQWJ) {
        this.SHQWJ = SHQWJ;
    }

    public String getSHQRQ() {
        return SHQRQ;
    }

    public void setSHQRQ(String SHQRQ) {
        this.SHQRQ = SHQRQ;
    }

    public String getSHQR() {
        return SHQR;
    }

    public void setSHQR(String SHQR) {
        this.SHQR = SHQR;
    }

    public int getYDBZ() {
        return YDBZ;
    }

    public void setYDBZ(int YDBZ) {
        this.YDBZ = YDBZ;
    }

    public String getYDSJ() {
        return YDSJ;
    }

    public void setYDSJ(String YDSJ) {
        this.YDSJ = YDSJ;
    }
}
