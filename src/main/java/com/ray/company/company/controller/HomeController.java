package com.ray.company.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @Author: ZhangRui
 * @Description:
 * @date: Created in 16:10 2018/3/26
 * @Modified By:
 */
@Controller
@RequestMapping("/")
public class HomeController{

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about() {
        return "about";
    }
    @RequestMapping(value = "/qualification", method = RequestMethod.GET)
    public String qualification() {
        return "qualification";
    }
    @RequestMapping(value = "/factory", method = RequestMethod.GET)
    public String factory() {
        return "factory";
    }
    @RequestMapping(value = "/market", method = RequestMethod.GET)
    public String market() {
        return "market";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String product() {
        return "product";
    }
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contact() {
        return "contact";
    }

    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String detail(@RequestParam Integer id) {
        return "detail0"+id;
    }

    @RequestMapping(value = "/file", method = RequestMethod.GET)
    public String file() {
        return "file";
    }


}
