package com.fancyx.cees.domain.busi;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-05.
 */
public class Display_Concrete  implements Serializable {

    private static final long serialVersionUID = 1L;

    private  int  XSKD;
    private  String  ZDMC;
    private  int  XH;
    private  String  XSYS;
    private  String  GRIDMC;
    private  String  XZ;
    private  int  VISIBLE;
    private  String  ZW;

    public int getXSKD() {
        return XSKD;
    }

    public void setXSKD(int XSKD) {
        this.XSKD = XSKD;
    }

    public String getZDMC() {
        return ZDMC;
    }

    public void setZDMC(String ZDMC) {
        this.ZDMC = ZDMC;
    }

    public int getXH() {
        return XH;
    }

    public void setXH(int XH) {
        this.XH = XH;
    }

    public String getXSYS() {
        return XSYS;
    }

    public void setXSYS(String XSYS) {
        this.XSYS = XSYS;
    }

    public String getGRIDMC() {
        return GRIDMC;
    }

    public void setGRIDMC(String GRIDMC) {
        this.GRIDMC = GRIDMC;
    }

    public String getXZ() {
        return XZ;
    }

    public void setXZ(String XZ) {
        this.XZ = XZ;
    }

    public int getVISIBLE() {
        return VISIBLE;
    }

    public void setVISIBLE(int VISIBLE) {
        this.VISIBLE = VISIBLE;
    }

    public String getZW() {
        return ZW;
    }

    public void setZW(String ZW) {
        this.ZW = ZW;
    }
}
