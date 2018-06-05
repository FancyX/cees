package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.CEES_ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by 啊Q on 2018-05-30.
 */
@Component
public class ProjectDbUtil {

    @Autowired
    private CEES_ProjectService cees_projectService;


    /*
    * 获取不重复的 sn_project 字段
    *
    * 由于该数据库供cs和bs使用所以每次从数据库中取出
    * 所以每次从数据库中查询
    */
    public int getSn() {

        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_sn_project = cees_projectService.getMaxSn();
            return db_sn_project + 1;
        }
    }

    public int getPid() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            return  cees_projectService.getMaxPid()+1;
        }
    }
}
