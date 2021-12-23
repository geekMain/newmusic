package com.music.controller;
import com.music.bean.SongList;
import com.music.service.Songservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/songList")
public class SongListController {
    @Autowired
    private Songservice songService;
    //根据id查询歌单---hxc
    @RequestMapping("/songListOne")
    public String songListOne(Integer songId, Model model){
        SongList songList = songService.getSongAll(songId);
        List<SongList> songLists = new ArrayList<>();
        songLists.add(songList);
        model.addAttribute("list",songLists);
        System.out.println(songService.getSongAll(songId));
        return "userMana/songListMana";
    }

    //创建歌单
    @RequestMapping("/songListAdd")
    public String songListAdd(SongList songList,Model model) {
        songService.insertSongList(songList);
        model.addAttribute("list", songService.getSongListAll());
        return "userMana/songListMana";
    }
}
