package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_ConcreteDao;
import com.fancyx.cees.domain.busi.CEES_Concrete;
import com.fancyx.cees.domain.vo.CEES_ConcreteVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-19.
 */
@Repository
public class CEES_ConcreteDaoImpl extends BaseDao implements CEES_ConcreteDao {


    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_ConcreteDao";

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
    public List<CEES_Concrete> selectByConstructionId(int constructionId) {
        return this.queryForList(this.getNamespace("selectByConstructionId"), constructionId);
    }

    @Override
    public CEES_Concrete getConcrete(int concreteID) {
        return (CEES_Concrete) this.queryForObject(this.getNamespace("selectByConstructionId"), concreteID);
    }

    @Override
    public PageBean<CEES_ConcreteVo> pageQuery(PageBean pageBean, CEES_ConcreteVo cees_concreteVo) {
        PageBean<CEES_ConcreteVo> voPageBean = this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                cees_concreteVo);
        return voPageBean;
    }

    @Override
    public void update(CEES_ConcreteVo cees_concreteVo) {
        this.update(this.getNamespace("update"), cees_concreteVo);
    }

    @Override
    public void insert(CEES_ConcreteVo cees_concreteVo) {
        this.insert(this.getNamespace("insert"), cees_concreteVo);
    }

    @Override
    public void delete(Integer id) {
        this.delete(this.getNamespace("delete"), id);
    }

    @Override
    public int getMaxSn() {
        return (Integer) this.queryForObject(this.getNamespace("maxSn"));
    }


}
