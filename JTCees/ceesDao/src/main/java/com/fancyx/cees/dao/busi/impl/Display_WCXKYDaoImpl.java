package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_WCXKYDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Display_WCXKYDaoImpl extends BaseDao implements Display_WCXKYDao {
    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_WCXKYDao";

    /**
     * mybatis的namespace
     *
     * @param statement
     * @return 命名空间
     */
    private String getNamespace(String statement) {
        return NAME_SPACE + "." + statement;
    }


    @Override
    public List selectAll() {
        return this.queryForList(this.getNamespace("selectAll"));
    }
}
