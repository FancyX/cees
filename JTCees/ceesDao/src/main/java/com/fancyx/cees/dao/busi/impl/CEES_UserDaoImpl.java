package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.CEES_UserDao;
import com.fancyx.cees.domain.busi.CEES_User;
import com.fancyx.cees.domain.vo.CEES_UserVO;
import org.springframework.stereotype.Repository;


/**
 * Created by 啊Q on 2018-05-19.
 */
@Repository
public class CEES_UserDaoImpl extends BaseDao implements CEES_UserDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_UserDao";

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
    public CEES_User login(CEES_UserVO cees_userVO) {
        return (CEES_User) this.queryForObject(this.getNamespace("login"), cees_userVO);
    }
}
