package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_GJYCDao;
import com.fancyx.cees.domain.busi.Display_GJYC;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-16.
 */
@Repository
public class Display_GJYCDaoImpl extends BaseDao implements Display_GJYCDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_GJYCDao";

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
    public List<Display_GJYC> selectAll() {
        return this.queryForList(this.getNamespace("selectAll"));
    }
}
