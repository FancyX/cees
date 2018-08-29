package com;

import java.util.List;
import java.util.Map;

public class Main {

    public static void main(String[] args) throws Exception {

        String tableName = "CEES_Test";
        String sql = "select column_name,data_type from information_schema.columns where table_name = '" + tableName + "'";
        List<Map<String, String>> result = Dao_outside.getInstance().queryForList(sql);
        for (Map<String, String> map : result) {
            String column_name = map.get("column_name");
            String data_type = map.get("data_type");

//---------------------------------------------select like--------------------------------------------------------
//            if (data_type.equals("int") || data_type.equals("smallint")) {
//                String str = "OR " + column_name + " = #{queryIntStr}";
//                System.out.println(str);
//            }
//            if (data_type.equals("varchar")) {
//                String str = "OR " + column_name + " LIKE '%${queryStr}%'";
//                System.out.println(str);
//            }


//---------------------------------------------update--------------------------------------------------------
            String update = "<if test=\"" + column_name + " != null\" >\n" +
                    "  [" + column_name + "] = #{" + column_name + "},\n" +
                    "</if>";
            System.out.println(update);

//---------------------------------------------console name--------------------------------------------------------

//            System.out.println(column_name + " ,");
        }


    }
}
