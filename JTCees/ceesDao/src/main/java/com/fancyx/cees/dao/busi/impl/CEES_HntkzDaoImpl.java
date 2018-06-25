package com.fancyx.cees.dao.busi.impl;

import com.fancyx.cees.dao.BaseDao;
import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.dao.busi.CEES_HntkzDao;
import com.fancyx.cees.domain.busi.CEES_Hntkz;
import com.fancyx.cees.domain.vo.CEES_HntkzVo;
import org.springframework.stereotype.Repository;

/**
 * Created by 啊Q on 2018-06-25.
 */
@Repository
public class CEES_HntkzDaoImpl extends BaseDao implements CEES_HntkzDao {

    public static final String NAME_SPACE = "com.fancyx.cees.dao.busi.CEES_HntkzDao";

    @Override
    public PageBean<CEES_Hntkz> pageQuery(PageBean pageBean, CEES_HntkzVo cees_hntkz) {
        PageBean<CEES_Hntkz> result = this.pageQuery(
                this.getNamespace("selectByBean"),
                this.getNamespace("selectByBeanCount"),
                pageBean,
                cees_hntkz);
        return result;
    }

    @Override
    public void delete(Integer id) {
        this.delete(this.getNamespace("delete"), id);
    }

    @Override
    public void update(CEES_HntkzVo cees_hntkzVo) {
        this.update(this.getNamespace("update"), cees_hntkzVo);
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
