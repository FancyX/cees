package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_ProjectDao;
import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.vo.CEES_ProjectVo;
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

    @Override
    public PageBean<CEES_Project> pageQuery(PageBean pageBean, CEES_ProjectVo cees_projectVo) {
        PageBean<CEES_Project> pageQueryBean = this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                cees_projectVo);
        return pageQueryBean;
    }

    @Override
    public void update(CEES_ProjectVo cees_projectVo) {
        this.update(this.getNamespace("update"), cees_projectVo);
    }

    @Override
    public Integer getMaxSn() {
        return (Integer) this.queryForObject(this.getNamespace("maxSn"));
    }

    @Override
    public void insert(CEES_ProjectVo cees_projectVo) {
        this.insert(this.getNamespace("insert"), cees_projectVo);
    }

    @Override
    public void delete(Integer id) {
        this.delete(this.getNamespace("delete"), id);
    }
}
