package com.fancyx.cees.common;

import com.fancyx.cees.service.busi.CEESConcreteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CEESConcreteDBUtil {

    @Autowired
    private CEESConcreteService cees_concreteService;

    public int getSn() {

        synchronized (this) {
            return cees_concreteService.getMaxSn() + 1;
        }
    }

    public int getCcid() {
        synchronized (this) {
            return cees_concreteService.getMaxCcid() + 1;
        }
    }
}
