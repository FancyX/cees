package com.fancyx.cees.domain.busi;

import java.io.Serializable;

/**
 * Created by 啊Q on 2018-05-05.
 */
public class CEES_Number implements Serializable {
    private static final long serialVersionUID = 1L;

    //用户id
    private  int  nid;
    //施工单位id
    private  int  cid;
    //序号
    private  int  sn;
    //数据库表名
    private  String  tablename;
    //编号字段名
    private  String  fieldname;
    //编号年度前字符
    private  String  yearfront;
    //编号年度后字符
    private  String  yearafter;
    //编号序号起始位置
    private  int  numberbegin;
    //编号序号位数（长度）
    private  int  numberlength;

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getSn() {
        return sn;
    }

    public void setSn(int sn) {
        this.sn = sn;
    }

    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename;
    }

    public String getFieldname() {
        return fieldname;
    }

    public void setFieldname(String fieldname) {
        this.fieldname = fieldname;
    }

    public String getYearfront() {
        return yearfront;
    }

    public void setYearfront(String yearfront) {
        this.yearfront = yearfront;
    }

    public String getYearafter() {
        return yearafter;
    }

    public void setYearafter(String yearafter) {
        this.yearafter = yearafter;
    }

    public int getNumberbegin() {
        return numberbegin;
    }

    public void setNumberbegin(int numberbegin) {
        this.numberbegin = numberbegin;
    }

    public int getNumberlength() {
        return numberlength;
    }

    public void setNumberlength(int numberlength) {
        this.numberlength = numberlength;
    }
}
