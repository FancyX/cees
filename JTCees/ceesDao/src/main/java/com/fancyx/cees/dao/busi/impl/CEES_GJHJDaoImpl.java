package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_GJHJDao;
import com.fancyx.cees.domain.busi.CEES_GJHJ;
import com.fancyx.cees.domain.vo.CEES_GJHJVo;
import org.springframework.stereotype.Repository;

/**
 * Created by 啊Q on 2018-07-19.
 */
@Repository
public class CEES_GJHJDaoImpl extends BaseDao implements CEES_GJHJDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_GJHJDao";

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
    public PageBean<CEES_GJHJ> pageQuery(PageBean pageBean, CEES_GJHJVo vo) {
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
    public void update(CEES_GJHJVo vo) {
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
    public String getGjhjnumber() {
        return (String) this.queryForObject(this.getNamespace("maxGjhjnumber"));
    }

    @Override
    public void insert(CEES_GJHJVo vo) {
        this.insert(this.getNamespace("insert"), vo);
    }
}
