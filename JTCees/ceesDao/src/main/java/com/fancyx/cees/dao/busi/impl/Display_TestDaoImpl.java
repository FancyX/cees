package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_TestDao;
import com.fancyx.cees.domain.busi.Display_Test;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Display_TestDaoImpl extends BaseDao implements Display_TestDao {
    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_TestDao";

    @Override
    public List<Display_Test> selectAll() {
        return this.queryForList(this.getNamespace("selectAll"));
    }

    /**
     * mybatis的namespace
     *
     * @param statement
     * @return 命名空间
     */
    private String getNamespace(String statement) {
        return NAME_SPACE + "." + statement;
    }
}
