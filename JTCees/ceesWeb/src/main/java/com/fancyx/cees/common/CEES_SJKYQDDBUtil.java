package com.fancyx.cees.common;


import com.fancyx.cees.service.busi.CEES_SJKYQDService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Calendar;

/**
 * Created by 啊Q on 2018-07-14.
 */
@Component
public class CEES_SJKYQDDBUtil {

    @Autowired
    private CEES_SJKYQDService cees_sjkyqdService;

    public int getSn_project() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_sn_project = cees_sjkyqdService.getMax_sn_project();
            return db_sn_project + 1;
        }
    }

    public String getCnumber() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            return FieldsUtil.getCnumber(cees_sjkyqdService.getCnumber());
        }
    }

    public String getProjectnumber() {
        synchronized (this) {
            return FieldsUtil.getProjectnumber(cees_sjkyqdService.getProjectnumber());
        }
    }

    public String getSjkynumber() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            String db_Kynumber = cees_sjkyqdService.getSjkynumber();
            int kynumber = 1;
            if (db_Kynumber!=null && db_Kynumber.length() > 1) {
                kynumber = Integer.parseInt(db_Kynumber.substring(6)) + 1;
            }
            String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
            return  year + String.format("%04d", kynumber);//其中0表示补零而不是补空格，6表示至少6位
        }
    }
}
