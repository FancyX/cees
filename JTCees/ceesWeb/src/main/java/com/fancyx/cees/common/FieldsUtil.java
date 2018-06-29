package com.fancyx.cees.common;

import java.util.Calendar;

public class FieldsUtil {

    public static String getCnumber(int db_Cnumber) {
        int cnumber = 1;
        if (db_Cnumber > 0) {
            String str_db_Cnumber = String.valueOf(db_Cnumber);
            cnumber = Integer.parseInt(str_db_Cnumber.substring(4)) + 1;
        }
        String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
        return year + String.format("%04d", cnumber);//其中0表示补零而不是补空格，6表示至少6位
    }


    public static String getProjectnumber(int db_projectnumber) {
        int projectnumber = 1;
        if (db_projectnumber > 0) {
            String str_db_Cnumber = String.valueOf(db_projectnumber);
            projectnumber = Integer.parseInt(str_db_Cnumber.substring(4)) + 1;
        }
        String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
        return year + String.format("%04d", projectnumber);//其中0表示补零而不是补空格，6表示至少6位
    }
}
