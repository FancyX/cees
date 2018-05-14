package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_HntkyDao;
import com.fancyx.cees.domain.busi.Display_Hntky;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-14.
 */
@Repository
public class Display_HntkyDaoImpl extends BaseDao<Display_Hntky> implements Display_HntkyDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_HntkyDao";

    @Override
    public List<Display_Hntky> selectAll() {
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
