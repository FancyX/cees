package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_ConstructionDao;
import com.fancyx.cees.domain.busi.Display_Construction;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-26.
 */
@Repository
public class Display_ConstructionDaoImpl extends BaseDao implements Display_ConstructionDao {


    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_ConstructionDao";

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
    public List<Display_Construction> selectAll() {
        return this.queryForList(this.getNamespace("selectAll"));
    }
}
