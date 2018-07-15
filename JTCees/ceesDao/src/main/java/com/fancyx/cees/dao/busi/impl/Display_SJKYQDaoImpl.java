package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_SJKYQDao;
import com.fancyx.cees.domain.busi.Display_SJKYQD;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-15.
 */
@Repository
public class Display_SJKYQDaoImpl  extends BaseDao<Display_SJKYQD> implements Display_SJKYQDao {


    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_SJKYQDao";

    @Override
    public List<Display_SJKYQD> selectAll() {
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
