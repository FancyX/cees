package com.fancyx.cees.dao.busi;

import com.fancyx.cees.dao.PageBean;
import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.vo.CEES_ProjectVo;
import com.fancyx.cees.domain.vo.LoginQueryProjectVo;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
public interface CEES_ProjectDao {

    List<CEES_Project> getAllProject();

    CEES_Project getProject(LoginQueryProjectVo loginQueryProjectVo);

    PageBean<CEES_Project> pageQuery(PageBean pageBean, CEES_ProjectVo cees_projectVo);

    void update(CEES_ProjectVo cees_projectVo);

    Integer getMaxSn();

    void insert(CEES_ProjectVo cees_projectVo);

    void delete(Integer id);
}
