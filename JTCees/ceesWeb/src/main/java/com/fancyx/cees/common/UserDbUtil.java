package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by 啊Q on 2018-05-29.
 */
@Component
public class UserDbUtil {


    @Autowired
    private UserService userService;

    public Integer getSn() {
        //该锁只保证当前系统的sn_project不重复，不保证数据库中的字段不重复
        synchronized (this) {
            Integer db_sn_project = userService.getMaxSn();
            return db_sn_project + 1;
        }
    }

    public int getUid() {
        synchronized (this) {
            Integer id = userService.getMaxUid();
            return id + 1;
        }
    }
}
