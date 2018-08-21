package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_SJKYQDao;
import com.fancyx.cees.domain.busi.CEES_SJKYQD;
import com.fancyx.cees.domain.vo.CEES_SJKYQDVo;
import org.springframework.stereotype.Repository;

/**
 * Created by 啊Q on 2018-07-14.
 */
@Repository
public class CEES_SJKYQDaoImpl extends BaseDao implements CEES_SJKYQDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_SJKYQDao";

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
    public PageBean<CEES_SJKYQD> pageQuery(PageBean pageBean, CEES_SJKYQDVo cees_sjkyqdVo) {
        PageBean<CEES_SJKYQD> pageQueryBean = this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                cees_sjkyqdVo);
        return pageQueryBean;
    }

    @Override
    public void delete(Integer id) {
        this.delete(this.getNamespace("delete"), id);
    }

    @Override
    public void update(CEES_SJKYQDVo cees_sjkyqdVo) {
        this.update(this.getNamespace("update"), cees_sjkyqdVo);
    }

    @Override
    public void insert(CEES_SJKYQDVo cees_sjkyqdVo) {
        this.insert(this.getNamespace("insert"), cees_sjkyqdVo);
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
    public String getSjkynumber() {
        return (String) this.queryForObject(this.getNamespace("maxSjkynumber"));
    }
}
