package com.music.controller;

import com.music.service.AlbumService;
import com.music.service.MusicService;
import com.music.service.MusicStyleService;
import com.music.service.SingerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Page")
public class PageController {
    @Autowired
    MusicService music;
    @Autowired
    SingerService singer;
    @Autowired
    MusicStyleService style;
    @Autowired
    AlbumService album;

    @RequestMapping("/admin")
    public String admin(){ return "admin";}

    @RequestMapping("/meter")
    public String meter(){
        return "mainBody/meter";
    }

    //用户管理
    @RequestMapping("/userMana")
    public String userMana(Model model){
//
//        model.addAttribute("list",user.getUserAll());
//
//        model.addAttribute("useradd",user.insertUser());

        return "mainBody/userMana";
    }

    //专辑管理
    @RequestMapping("/albumMana")
    public String albumMana(Model model){
        model.addAttribute("albumlist",album.getAlbumAll());
        return "mainBody/albumMana";
    }

    @RequestMapping("/musicMana")
    public String musicMana(Model model){
        //当前可以正常获取到mysql中的属性值
        //System.out.println(music.queryAllSongs());

        model.addAttribute("list",music.queryAllSongs());
        model.addAttribute("list2",singer.queryAllSinger());
        model.addAttribute("list3",style.queryAllStyle());
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