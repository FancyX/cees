package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_WCXKYDao;
import com.fancyx.cees.domain.busi.CEES_WCXKY;
import com.fancyx.cees.domain.vo.CEES_WCXKYVo;
import org.springframework.stereotype.Repository;

/**
 * Created by 啊Q on 2018-07-22.
 */
@Repository
public class CEES_WCXKYDaoImpl extends BaseDao implements CEES_WCXKYDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_WCXKYDao";

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
    public PageBean<CEES_WCXKY> pageQuery(PageBean pageBean, CEES_WCXKYVo vo) {
        return this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                vo);
    }

    @Override
    public void delete(Integer id) {
        this.insert(this.getNamespace("delete"), id);
    }

    @Override
    public void update(CEES_WCXKYVo vo) {
        this.update(this.getNamespace("update"), vo);
    }

    @Override
    public Integer getMax_sn_project() {
        return (Integer) this.queryForObject(this.getNamespace("maxSnProject"));
    }

    @Override
    public int getCnumber() {
        return (Integer) this.queryForObject(this.getNamespace("maxCnumber"));
    }

    @Override
    public int getProjectnumber() {
        return (Integer) this.queryForObject(this.getNamespace("maxProjectnumber"));
    }

    @Override
    public String getWcxnumber() {
        return (String) this.queryForObject(this.getNamespace("maxWcxnumber"));
    }


    @Override
    public void insert(CEES_WCXKYVo vo) {
        this.insert(this.getNamespace("insert"), vo);
    }
}
