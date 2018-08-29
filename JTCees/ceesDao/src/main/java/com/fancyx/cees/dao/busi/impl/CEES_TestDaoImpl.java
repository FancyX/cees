package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_TestDao;
import com.fancyx.cees.domain.busi.CEES_Test;
import com.fancyx.cees.domain.vo.CEES_TestVo;
import org.springframework.stereotype.Repository;

@Repository
public class CEES_TestDaoImpl extends BaseDao implements CEES_TestDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_TestDao";

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
    public PageBean<CEES_Test> pageQuery(PageBean pageBean, CEES_TestVo vo) {
        PageBean pageQueryBean = this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                vo);
        return pageQueryBean;
    }

    @Override
    public void delete(Integer id) {
        this.insert(this.getNamespace("delete"), id);
    }

    @Override
    public void update(CEES_TestVo vo) {
        this.update(this.getNamespace("update"), vo);
    }

    @Override
    public void insert(CEES_TestVo vo) {
        this.insert(this.getNamespace("insert"), vo);
    }
}
