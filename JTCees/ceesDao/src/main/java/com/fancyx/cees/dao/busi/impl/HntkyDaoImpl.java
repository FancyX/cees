package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.HntkyDao;
import com.fancyx.cees.domain.busi.Hntky;
import org.springframework.stereotype.Repository;

@Repository
public class HntkyDaoImpl extends BaseDao<Hntky> implements HntkyDao{
    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.hntky";
    @Override
    public PageBean<Hntky> pageQuery(PageBean pageBean, Hntky hntky) {
        PageBean<Hntky> hntkys = this.pageQuery(this.getNamespace("selectByBean"),this.getNamespace("selectByBeanCount"),pageBean,hntky);
        return hntkys;
    }
    /**
     * mybatis的namespace
     * @param statement
     * @return 命名空间
     */
    private String getNamespace(String statement) {
        return NAME_SPACE + "." + statement;
    }
}
