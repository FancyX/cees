package com.fancyx.cees.common;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by 啊Q on 2018-05-27.
 */
public class TimeUtil {


    public static String getCurrentTime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        return df.format(new Date()).toString();
    }

    public static Date getNewTime(Date date, Integer n) {

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date); //需要将date数据转移到Calender对象中操作
        calendar.add(calendar.DATE, n);//把日期往后增加n天.正数往后推,负数往前移动
        date = calendar.getTime();   //这个时间就是日期往后推一天的结果
        return  date;
    }
}
