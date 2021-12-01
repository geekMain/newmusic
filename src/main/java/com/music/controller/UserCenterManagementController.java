package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userCenterMana")
public class UserCenterManagementController {

    @RequestMapping("/fanMana")
    public String fanMana(){
        return "userMana/fanMana";
    }

    @RequestMapping("/informMana")
    public String inforMana(){
        return "userMana/informMana";
    }

    @RequestMapping("/logMana")
    public String logMana(){
        return "userMana/logMana";
    }

    @RequestMapping("/collectMana")
    public String collectMana(){
        return "userMana/collectMana";
    }

    @RequestMapping("/songListMana")
    public String songListMana(){
        return "userMana/songListMana";
    }

    @RequestMapping("/commentMana")
    public String commentMana(){
        return "userMana/commentMana";
    }
}