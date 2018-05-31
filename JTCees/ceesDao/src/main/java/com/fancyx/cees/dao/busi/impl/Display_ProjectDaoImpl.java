package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_ProjectDao;
import com.fancyx.cees.domain.busi.Display_Hntky;
import com.fancyx.cees.domain.busi.Display_Project;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-30.
 */
@Repository
public class Display_ProjectDaoImpl extends BaseDao<Display_Project> implements Display_ProjectDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_ProjectDao";

    @Override
    public List<Display_Project> selectAll() {
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
