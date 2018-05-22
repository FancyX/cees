package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.CEES_ConcreteDao;
import com.fancyx.cees.domain.busi.CEES_Concrete;
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
        return this.queryForList(this.getNamespace("selectByConstructionId"),constructionId);
    }

    @Override
    public CEES_Concrete getConcrete(int concreteID) {
        return (CEES_Concrete) this.queryForObject(this.getNamespace("selectByConstructionId"),concreteID);
    }
}
