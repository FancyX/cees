package com.fancyx.cees.service.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Hntkz;
import com.fancyx.cees.domain.vo.CEES_HntkzVo;

/**
 * Created by 啊Q on 2018-06-23.
 */
public interface CEES_HntkzService {
    PageBean<CEES_Hntkz> pageQuery(PageBean pageBean, CEES_HntkzVo cees_hntkzVo);

    void delete(Integer id);

    void update(CEES_HntkzVo cees_hntkzVo);
}
