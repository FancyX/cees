package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_ConstructionDao;
import com.fancyx.cees.domain.busi.CEES_Construction;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.vo.CEES_ConstructionVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
@Repository
public class CEES_ConstructionDaoImpl extends BaseDao implements CEES_ConstructionDao {


    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_ConstructionDao";

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
    public CEES_Construction getConstruction(int constructionId) {
        return (CEES_Construction) this.queryForObject(this.getNamespace("getConstruction"), constructionId);
    }

    @Override
    public void insert(CEES_ConstructionVo ceesConstructionVo) {
        this.insert(this.getNamespace("insert"), ceesConstructionVo);
    }

    @Override
    public void update(CEES_ConstructionVo ceesConstructionVo) {
        this.update(this.getNamespace("update"), ceesConstructionVo);
    }

    @Override
    public void delete(Integer id) {
        this.delete(this.getNamespace("delete"), id);
    }

    @Override
    public PageBean<CEES_Construction> pageQuery(PageBean pageBean, CEES_ConstructionVo ceesConcreteVo) {
        PageBean<CEES_Construction>  cees_constructionPageBean= this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                ceesConcreteVo);
        return  cees_constructionPageBean;
    }

    @Override
    public Integer getMaxSn() {
        return (Integer) this.queryForObject(this.getNamespace("maxSn"));
    }

    @Override
    public Integer getMaxCnumber() {
        return (Integer) this.queryForObject(this.getNamespace("maxCnumber"));
    }

    @Override
    public List<CEES_ConstructionVo> getAll() {
        return this.queryForList( this.getNamespace("getAll"));
    }

    @Override
    public Integer getMaxCid() {
        return (Integer) this.queryForObject(this.getNamespace("maxCid"));
    }
}
