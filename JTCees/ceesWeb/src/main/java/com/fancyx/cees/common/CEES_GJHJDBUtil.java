package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.CEES_GJHJService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Calendar;

/**
 * Created by 啊Q on 2018-07-19.
 */
@Component
public class CEES_GJHJDBUtil {

    @Resource
    private CEES_GJHJService cees;

    public int getSn_project() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_sn_project = cees.getMax_sn_project();
            return db_sn_project + 1;
        }
    }

    public String getCnumber() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            return FieldsUtil.getCnumber(cees.getCnumber());
        }
    }

    public String getProjectnumber() {
        synchronized (this) {
            return FieldsUtil.getProjectnumber(cees.getProjectnumber());
        }
    }

    public String getGjhjnumber() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            String number = cees.getGjhjnumber();
            int kynumber = 1;
            if (number != null && number.length() > 1) {
                kynumber = Integer.parseInt(number.substring(6)) + 1;
            }
            String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
            return  year + String.format("%04d", kynumber);//其中0表示补零而不是补空格，6表示至少6位
        }
    }
}
