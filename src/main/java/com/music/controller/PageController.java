package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Page")
public class PageController {

    @RequestMapping("/meter")
    public String meter(){
        return "mainBody/meter";
    }

    @RequestMapping("/userMana")
    public String userMana(){
        return "mainBody/userMana";
    }

    @RequestMapping("/albumMana")
    public String albumMana(){
        return "mainBody/albumMana";
    }

    @RequestMapping("/musicMana")
    public String musicMana(){
        return "mainBody/musicMana";
    }

    @RequestMapping("/styleMana")
    public String styleMana(){
        return "mainBody/styleMana";
    }

    @RequestMapping("/userCenter")
    public String userCenter(){
        return "mainBody/userCenter";
    }
}