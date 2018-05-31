package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Calendar;

/**
 * 混凝土抗压自增字段生成类
 * 默认单例
 * Created by 啊Q on 2018-05-22.
 */

@Component
public class HunNingKuKangYaDBUtil {

    @Resource
    private HunNingTuKangYaService hunNingTuKangYaService;


    /*
    * 获取不重复的 sn_project 字段
    *
    * 由于该数据库供cs和bs使用所以每次从数据库中取出
    * 所以每次从数据库中查询
    */
    public int getSnProject() {

        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_sn_project = hunNingTuKangYaService.getMax_sn_project();
            return db_sn_project + 1;
        }
    }


    public String getCnumber() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_Cnumber = hunNingTuKangYaService.getCnumber();
            int cnumber = 1;
            if (db_Cnumber > 0) {
                String str_db_Cnumber = String.valueOf(db_Cnumber);
                cnumber = Integer.parseInt(str_db_Cnumber.substring(4)) + 1;
            }
            String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
            return year + String.format("%04d", cnumber);//其中0表示补零而不是补空格，6表示至少6位
        }
    }

    public String getProjectnumber() {


        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_projectnumber = hunNingTuKangYaService.getProjectnumber();
            int projectnumber = 1;
            if (db_projectnumber > 0) {
                String str_db_Cnumber = String.valueOf(db_projectnumber);
                projectnumber = Integer.parseInt(str_db_Cnumber.substring(4)) + 1;
            }
            String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
            return year + String.format("%04d", projectnumber);//其中0表示补零而不是补空格，6表示至少6位
        }
    }

    public String getKynumber() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            String db_Kynumber = hunNingTuKangYaService.getKynumber();
            int kynumber = 1;
            if (db_Kynumber.length() > 0) {
                kynumber = Integer.parseInt(db_Kynumber.substring(6)) + 1;
            }
            String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
            return "ky" + year + String.format("%04d", kynumber);//其中0表示补零而不是补空格，6表示至少6位
        }
    }
}
