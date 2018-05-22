package com.fancyx.cees.service.busi.impl;

import com.fancyx.cees.domain.busi.CEES_Concrete;
import com.fancyx.cees.domain.vo.BaseDataVO;
import com.fancyx.cees.domain.vo.SessionVO;
import com.fancyx.cees.manager.busi.CEES_ConcreteManager;
import com.fancyx.cees.service.busi.IndexService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 啊Q on 2018-05-20.
 */
@Service
public class IndexServiceImpl implements IndexService {


    @Resource
    private CEES_ConcreteManager cees_concreteManager;

    @Override
    public BaseDataVO getBaseData(SessionVO sessionVO) {
        BaseDataVO baseDataVO = new BaseDataVO(sessionVO);
        List<CEES_Concrete> cees_concreteList = cees_concreteManager.selectByConstructionId(sessionVO
                .getCees_construction().getCid());
        baseDataVO.setCees_concreteList(cees_concreteList);

        return baseDataVO;
    }
}
