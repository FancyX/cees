package com.fancyx.cees.config;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 啊Q on 2018-05-22.
 */
public class CustomDateEdtor  implements WebBindingInitializer {


    public void initBinder(WebDataBinder binder, WebRequest request) {
        // TODO Auto-generated method stub
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

}