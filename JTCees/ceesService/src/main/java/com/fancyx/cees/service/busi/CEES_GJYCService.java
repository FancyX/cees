package com.fancyx.cees.service.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_GJYC;
import com.fancyx.cees.domain.vo.CEES_GJYCVo;

/**
 * Created by 啊Q on 2018-07-16.
 */
public interface CEES_GJYCService {
    PageBean<CEES_GJYC> pageQuery(PageBean pageBean, CEES_GJYCVo cees_gjycVo);

    void delete(Integer id);

    void update(CEES_GJYCVo vo);
}
