package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.CEES_HntkzService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Calendar;

/**
 * Created by 啊Q on 2018-06-25.
 */
@Component
public class CEES_HntkzDBUtil {

    @Resource
    private CEES_HntkzService cees_hntkzService;

    /*
     * 获取不重复的 sn_project 字段
     *
     * 由于该数据库供cs和bs使用所以每次从数据库中取出
     * 所以每次从数据库中查询
     */
    public int getSnProject() {

        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_sn_project = cees_hntkzService.getMax_sn_project();
            return db_sn_project + 1;
        }
    }

    public String getCnumber() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            return FieldsUtil.getCnumber(cees_hntkzService.getCnumber());
        }
    }

    public String getProjectnumber() {
        synchronized (this) {
            return FieldsUtil.getProjectnumber(cees_hntkzService.getProjectnumber());
        }
    }

    public String getKznumber() {

        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            String db_Kynumber = cees_hntkzService.getKznumber();
            int kynumber = 1;
            if (db_Kynumber.length() > 0) {
                kynumber = Integer.parseInt(db_Kynumber.substring(6)) + 1;
            }
            String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
            return "kz" + year + String.format("%04d", kynumber);//其中0表示补零而不是补空格，6表示至少6位
        }

    }
}
