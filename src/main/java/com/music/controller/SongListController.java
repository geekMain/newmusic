package com.music.controller;
import com.music.bean.SongList;
import com.music.service.Songservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

    //添加歌单
    @RequestMapping("/songListAdd")
    public String songListAdd(SongList songList,Model model) {
        songService.insertSongList(songList);
        model.addAttribute("list", songService.getSongListAll());
        return "userMana/songListMana";
    }

    //删除歌单
    @RequestMapping("/songListDelete/{songId}")
    public String songListDelete(@PathVariable int songId, Model model){
        songService.deleteSongList(songId);
        List<SongList> lists = songService.getSongListAll();
        model.addAttribute("list", lists);
        return "userMana/songListMana";
    }

    //修改歌单
    @RequestMapping("/songListUpdate")
    public String songListUpdate(SongList songList,Model model) {
        System.out.println("songList = " + songList);
        Integer count = songService.updateSongList(songList);
        System.out.println("count = " + count);
        List<SongList> songLists = songService.getSongListAll();
        System.out.println("songLists = " + songLists);
        model.addAttribute("list", songLists);
        return "userMana/songListMana";
    }
}
