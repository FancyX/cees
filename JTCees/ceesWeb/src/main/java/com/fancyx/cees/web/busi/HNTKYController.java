package com.fancyx.cees.web.busi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/hntky")
class HNTKYController {
    @RequestMapping(value = "/index")
    public String index(){
        return "busi/hntky/hntky_index";
    }
}
