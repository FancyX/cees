package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_HntkzDao;

import com.fancyx.cees.domain.busi.Display_Hntkz;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-06-25.
 */
@Repository
public class Display_HntkzDaoImpl extends BaseDao implements Display_HntkzDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_HntkzDao";

    @Override
    public List<Display_Hntkz> selectAll() {
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
