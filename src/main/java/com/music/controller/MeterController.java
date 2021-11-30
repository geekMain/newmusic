package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/meter")
public class MeterController {

    @RequestMapping("/m")
    public String meter(){

        return "meter";
    }
}
