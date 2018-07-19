package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_GJYCDao;
import com.fancyx.cees.domain.busi.CEES_GJYC;
import com.fancyx.cees.domain.vo.CEES_GJYCVo;
import org.springframework.stereotype.Repository;

/**
 * Created by 啊Q on 2018-07-16.
 */
@Repository
public class CEES_GJYCDaoImpl extends BaseDao implements CEES_GJYCDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_GJYCDao";

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
    public PageBean<CEES_GJYC> pageQuery(PageBean pageBean, CEES_GJYCVo cees_gjycVo) {
        PageBean<CEES_GJYC> pageQueryBean = this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                cees_gjycVo);
        return pageQueryBean;
    }

    @Override
    public void delete(Integer id) {
        this.insert(this.getNamespace("delete"), id);
    }

    @Override
    public void update(CEES_GJYCVo vo) {
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
    public String getGjycnumber() {
        return (String) this.queryForObject(this.getNamespace("maxGjycnumber"));

    }

    @Override
    public void insert(CEES_GJYCVo cees_gjycVo) {
        this.insert(this.getNamespace("insert"), cees_gjycVo);
    }

}
