package com.music.controller;

import com.music.service.Songservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userCenterMana")
public class UserCenterManagementController {
    @Autowired
    Songservice Songlists;
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
    //查询所有歌单
    @RequestMapping("/songListMana")
    public String songListMana(Model model){
        model.addAttribute("list",Songlists.getSongListAll());

        return "userMana/songListMana";
    }
    @RequestMapping("/commentMana")
    public String commentMana(){
        return "userMana/commentMana";
    }
}