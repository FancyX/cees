package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.HunNingTuKangYaDao;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.vo.HunNingTuKangYaVO;
import org.springframework.stereotype.Repository;

/**
 * Created by 啊Q on 2018-05-02.
 */
@Repository
public class HunNingTuKangYaDaoImpl extends BaseDao implements HunNingTuKangYaDao {
    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.HunNingTuKangYaDao";

    @Override
    public PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaVO hunNingTuKangYa) {
        PageBean<HunNingTuKangYa> hntkys = this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                hunNingTuKangYa);
        return hntkys;
    }

    @Override
    public void insert(HunNingTuKangYa hunNingTuKangYa) {
        this.insert(this.getNamespace("insert"), hunNingTuKangYa);
    }

    @Override
    public void delete(Integer id) {
        this.delete(this.getNamespace("delete"), id);
    }

    @Override
    public void update(HunNingTuKangYaVO hunNingTuKangYaVO) {
        this.update(this.getNamespace("update"), hunNingTuKangYaVO);
    }

    @Override
    public Integer getMax_sn_project() {
        return (Integer) this.queryForObject(this.getNamespace("maxSnProject"));
    }

    @Override
    public Integer getCnumber() {

        return (Integer) this.queryForObject(this.getNamespace("maxCnumber"));
    }

    @Override
    public Integer getProjectnumber() {
        return (Integer) this.queryForObject(this.getNamespace("maxProjectnumber"));
    }

    @Override
    public String getKynumber() {
        return String.valueOf(this.queryForObject(this.getNamespace("maxKynumber")));
    }


    /**
     * mybatis的namespace
     *
     * @param statement
     * @return 命名空间
     */
    private String getNamespace(String statement) {
        return NAME_SPACE + "." + statement;
    }
}
