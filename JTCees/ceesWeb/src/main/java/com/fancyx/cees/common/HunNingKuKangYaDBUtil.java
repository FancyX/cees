package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.HunNingTuKangYaService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.atomic.AtomicInteger;

/**
 *
 * 默认单例
 * Created by 啊Q on 2018-05-22.
 */

@Component
public class HunNingKuKangYaDBUtil {

    @Resource
    private HunNingTuKangYaService hunNingTuKangYaService;

    private AtomicInteger sn_project = new AtomicInteger(0);


    public int getSn_project() {

        if (sn_project.get() == 0) {
            synchronized (this) {
                if (sn_project.get() == 0) {
                    Integer db_sn_project = hunNingTuKangYaService.getMax_sn_project();
                    sn_project.set(db_sn_project);
                }
            }
        }
        //返回自增1
        return sn_project.getAndAdd(1);
    }


}
