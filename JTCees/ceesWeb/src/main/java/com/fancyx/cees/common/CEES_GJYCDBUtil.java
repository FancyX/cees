package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.CEES_GJYCService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by 啊Q on 2018-07-16.
 */
@Component
public class CEES_GJYCDBUtil {

    @Resource
    private CEES_GJYCService cees;

    public int getSn_project() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_sn_project = cees.getMax_sn_project();
            return db_sn_project + 1;
        }
    }
}
