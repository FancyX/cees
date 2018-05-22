package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.busi.CEES_ProjectDao;
import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.vo.LoginQueryProjectVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
@Repository
public class CEES_ProjectDaoImpl extends BaseDao implements CEES_ProjectDao {


    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_ProjectDao";

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
    public List<CEES_Project> getAllProject() {
        return (List<CEES_Project>) this.queryForList(this.getNamespace("getAllProject"));
    }

    @Override
    public CEES_Project getProject(LoginQueryProjectVo loginQueryProjectVo) {
        return (CEES_Project) this.queryForObject(this.getNamespace("getProject"), loginQueryProjectVo);
    }
}
