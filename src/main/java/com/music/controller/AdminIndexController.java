package com.music.controller;

import com.music.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/adminIndex")
public class AdminIndexController {
    @Autowired
    MusicService musicService;

    @RequestMapping("/dailyPopularityOfSongs")
    @ResponseBody
    public Object dailyPopularityOfSongs(){
        System.out.println(musicService.queryAllSinger());
        return musicService.queryAllSongs();
    }

    @RequestMapping("/allSingers")
    @ResponseBody
    public Object allSingers(){
        return musicService.queryAllSinger();
    }


}
