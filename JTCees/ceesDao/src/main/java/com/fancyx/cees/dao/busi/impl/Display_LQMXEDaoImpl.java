package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_LQMXEDao;
import com.fancyx.cees.domain.busi.Display_LQMXE;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-07-21.
 */
@Repository
public class Display_LQMXEDaoImpl extends BaseDao implements Display_LQMXEDao {


    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_LQMXEDao";

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
    public List<Display_LQMXE> selectAll() {
        return this.queryForList(this.getNamespace("selectAll"));
    }

}
