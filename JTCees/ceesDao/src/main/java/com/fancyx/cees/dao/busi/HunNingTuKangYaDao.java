package com.fancyx.cees.dao.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.vo.HunNingTuKangYaVO;

/**
 * Created by 啊Q on 2018-05-02.
 */
public interface HunNingTuKangYaDao {

    /**
     * 分页查询混凝土抗压信息列表
     *
     * @param pageBean
     * @param hunNingTuKangYa
     * @return
     */
    PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaDTO hunNingTuKangYa);

    /**
     * 添加一条混凝土抗压信息
     *
     * @param hunNingTuKangYa
     * @return
     */
    void insert(HunNingTuKangYa hunNingTuKangYa);

    /**
     * 删除一条混凝土抗压信息
     *
     * @param id
     * @return
     */
    void delete(Integer id);

    void update(HunNingTuKangYaVO hunNingTuKangYaVO);

    Integer getMax_sn_project();

    Integer getCnumber();

    Integer getProjectnumber();

    String getKynumber();
}
