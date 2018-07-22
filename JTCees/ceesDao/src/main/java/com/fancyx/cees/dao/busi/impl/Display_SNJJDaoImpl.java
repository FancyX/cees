package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_SNJJDao;
import com.fancyx.cees.domain.busi.Display_GJHJ;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-22.
 */
@Repository
public class Display_SNJJDaoImpl extends BaseDao implements Display_SNJJDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_SNJJDao";

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
