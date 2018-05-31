package com.fancyx.cees.service.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.HunNingTuKangYa;
import com.fancyx.cees.domain.busi.HunNingTuKangYaDTO;
import com.fancyx.cees.domain.vo.HunNingTuKangYaVO;


public interface HunNingTuKangYaService {
    /**
     * 分页查询货架规格信息列表
     * @param pageBean
     * @param hntky
     * @return
     */
    public PageBean<HunNingTuKangYa> pageQuery(PageBean pageBean, HunNingTuKangYaDTO hntky);


    /**
     * 添加一条混凝土抗压信息
     *
     * @param hunNingTuKangYa
     * @return
     */
    boolean insert(HunNingTuKangYa hunNingTuKangYa);

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
