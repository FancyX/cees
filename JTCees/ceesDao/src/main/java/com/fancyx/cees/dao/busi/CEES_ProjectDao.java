package com.fancyx.cees.dao.busi;

import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.vo.LoginQueryProjectVo;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
public interface CEES_ProjectDao {

    List<CEES_Project> getAllProject();

    CEES_Project getProject(LoginQueryProjectVo loginQueryProjectVo);
}
