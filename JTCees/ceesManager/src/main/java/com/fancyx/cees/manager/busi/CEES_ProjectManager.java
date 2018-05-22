package com.fancyx.cees.manager.busi;

import com.fancyx.cees.domain.busi.CEES_Project;
import com.fancyx.cees.domain.vo.LoginQueryProjectVo;

import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
public interface CEES_ProjectManager {

    CEES_Project getProject( LoginQueryProjectVo loginQueryProjectVo );
    List<CEES_Project> getAllProject();
}
