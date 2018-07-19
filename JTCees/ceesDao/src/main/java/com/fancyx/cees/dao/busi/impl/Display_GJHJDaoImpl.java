package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_GJHJDao;
import com.fancyx.cees.domain.busi.Display_GJHJ;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-19.
 */
@Repository
public class Display_GJHJDaoImpl extends BaseDao implements Display_GJHJDao {


    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_GJHJDao";

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
    public List<Display_GJHJ> selectAll() {
        return this.queryForList(this.getNamespace("selectAll"));
    }
}
