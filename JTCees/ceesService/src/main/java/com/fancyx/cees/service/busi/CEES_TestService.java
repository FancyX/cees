package com.fancyx.cees.service.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Test;
import com.fancyx.cees.domain.vo.CEES_TestVo;

public interface CEES_TestService {
    PageBean<CEES_Test> pageQuery(PageBean pageBean, CEES_TestVo vo);

    void delete(Integer id);

    void update(CEES_TestVo vo);

    void insert(CEES_TestVo vo);
}
