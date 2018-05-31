package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
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

    @Override
    public PageBean<CEES_User> pageQuery(PageBean pageBean, CEES_UserVO cees_userVO) {

        PageBean<CEES_User>  ceesUserPageBean= this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                cees_userVO);
        return  ceesUserPageBean;
    }

    @Override
    public void delete(Integer id) {
        this.delete(this.getNamespace("delete"), id);
    }

    @Override
    public void update(CEES_UserVO ceesUserVO) {
        this.update(this.getNamespace("update"), ceesUserVO);
    }

    @Override
    public void insert(CEES_UserVO ceesUserVO) {
        this.insert(this.getNamespace("insert"), ceesUserVO);
    }

    @Override
    public Integer getMaxSn() {
        return (Integer) this.queryForObject(this.getNamespace("maxSn"));
    }
}
