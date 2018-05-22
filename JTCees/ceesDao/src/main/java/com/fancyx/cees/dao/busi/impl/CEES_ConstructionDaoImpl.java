package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.CEES_ConstructionDao;
import com.fancyx.cees.domain.busi.CEES_Construction;
import org.springframework.stereotype.Repository;

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
}
