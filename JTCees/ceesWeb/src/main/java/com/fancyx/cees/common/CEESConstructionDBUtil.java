package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.CEESConstructionService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Calendar;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by 啊Q on 2018-05-26.
 */
@Component
public class CEESConstructionDBUtil {

    @Resource
    private CEESConstructionService ceesConstructionService;

    private AtomicInteger sn = new AtomicInteger(0);

    public int getSn() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_sn_project = ceesConstructionService.getMaxSn();
            sn.set(db_sn_project);
        }
        //自增1并返回
        return sn.getAndAdd(1);
    }

    public String getCnumber() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_Cnumber = ceesConstructionService.getMaxCnumber();
            int cnumber = 1;
            if (db_Cnumber > 0) {
                String str_db_Cnumber = String.valueOf(db_Cnumber);
                cnumber = Integer.parseInt(str_db_Cnumber.substring(4)) + 1;
                System.out.println("str_db_Cnumber = " + str_db_Cnumber);

            }
            String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
            return year + String.format("%04d", cnumber);//其中0表示补零而不是补空格，6表示至少6位
        }
    }
}
