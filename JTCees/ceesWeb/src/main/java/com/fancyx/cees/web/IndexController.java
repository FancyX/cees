package com.fancyx.cees.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class IndexController {
    @RequestMapping(value = "/index")
    public String index(){
        return "index";
    }
}
