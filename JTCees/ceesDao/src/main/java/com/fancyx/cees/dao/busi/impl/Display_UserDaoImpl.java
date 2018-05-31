package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.Display_UserDao;
import com.fancyx.cees.domain.busi.Display_User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-28.
 */
@Repository
public class Display_UserDaoImpl extends BaseDao implements Display_UserDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.Display_UserDao";
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
    public List<Display_User> selectAll() {
        return this.queryForList(this.getNamespace("selectAll"));
    }
}
