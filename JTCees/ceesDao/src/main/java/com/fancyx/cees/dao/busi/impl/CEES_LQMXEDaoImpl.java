package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_LQMXEDao;
import com.fancyx.cees.domain.busi.CEES_LQMXE;
import com.fancyx.cees.domain.vo.CEES_LQMXEVo;
import org.springframework.stereotype.Repository;

/**
 * Created by 啊Q on 2018-07-21.
 */
@Repository
public class CEES_LQMXEDaoImpl extends BaseDao implements CEES_LQMXEDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_LQMXEDao";

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
    public PageBean<CEES_LQMXE> pageQuery(PageBean pageBean, CEES_LQMXEVo vo) {
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
    public void update(CEES_LQMXEVo vo) {
        this.update(this.getNamespace("update"), vo);
    }

    @Override
    public void insert(CEES_LQMXEVo vo) {
        this.insert(this.getNamespace("insert"), vo);
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
    public String getLqmxenumber() {
        return (String) this.queryForObject(this.getNamespace("maxLqmxenumber"));
    }

}
