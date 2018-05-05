package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.HunNingTuKangYaDao;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import org.springframework.stereotype.Repository;

/**
 * Created by 啊Q on 2018-05-02.
 */
@Repository
public class HunNingTuKangYaDaoImpl extends BaseDao<HunNingTuKangYa> implements HunNingTuKangYaDao {
    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.HunNingTuKangYaDao";

    @Override
    public PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaDTO hunNingTuKangYa) {
        PageBean<HunNingTuKangYa> hntkys = this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                hunNingTuKangYa);
        return hntkys;
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
