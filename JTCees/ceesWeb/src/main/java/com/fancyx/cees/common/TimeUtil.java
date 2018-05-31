package com.fancyx.cees.common;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 啊Q on 2018-05-27.
 */
public class TimeUtil {


    public static String getCurrentTime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        return df.format(new Date()).toString();
    }
}
