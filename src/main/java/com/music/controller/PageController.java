package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Page")
public class PageController {

    @RequestMapping("/meter")
    public String meter(){
        return "meter";
    }

    @RequestMapping("/userMana")
    public String userMana(){
        return "userMana";
    }

    @RequestMapping("/albumMana")
    public String albumMana(){
        return "albumMana";
    }

    @RequestMapping("/musicMana")
    public String musicMana(){
        return "musicMana";
    }

    @RequestMapping("/styleMana")
    public String styleMana(){
        return "styleMana";
    }

    @RequestMapping("/userCenter")
    public String userCenter(){
        return "userCenter";
    }
}