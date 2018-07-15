package com.fancyx.cees.domain.busi;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-05.
 */
public class Display_SJKYQD implements Serializable {

    private static final long serialVersionUID = 1L;

    private String XZ;
    private int VISIBLE;
    private String ZW;
    private int XSKD;
    private String ZDMC;
    private String GRIDMC;
    private int XH;
    private String XSYS;

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

    public String getGRIDMC() {
        return GRIDMC;
    }

    public void setGRIDMC(String GRIDMC) {
        this.GRIDMC = GRIDMC;
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


}
