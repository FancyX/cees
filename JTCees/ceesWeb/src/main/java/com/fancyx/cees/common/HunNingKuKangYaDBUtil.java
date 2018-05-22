package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.HunNingTuKangYaService;

import javax.annotation.Resource;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by 啊Q on 2018-05-22.
 */
public class HunNingKuKangYaDBUtil {

    private static HunNingKuKangYaDBUtil hunNingKuKangYaDbUtilSinge = null;

    public static HunNingKuKangYaDBUtil getInstance() {
        if (hunNingKuKangYaDbUtilSinge == null) {
            synchronized (HunNingKuKangYaDBUtil.class) {
                if (hunNingKuKangYaDbUtilSinge == null) {
                    hunNingKuKangYaDbUtilSinge = new HunNingKuKangYaDBUtil();
                }
            }
        }
        return hunNingKuKangYaDbUtilSinge;
    }

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
