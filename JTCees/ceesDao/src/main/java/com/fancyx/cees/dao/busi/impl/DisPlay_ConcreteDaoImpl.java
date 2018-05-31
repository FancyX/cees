package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.DisPlay_ConcreteDao;
import com.fancyx.cees.domain.busi.Display_Concrete;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DisPlay_ConcreteDaoImpl  extends BaseDao implements DisPlay_ConcreteDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.DisPlay_ConcreteDao";

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
    public List<Display_Concrete> selectAll() {
        return this.queryForList(this.getNamespace("selectAll"));
    }
}
