package com.music.service;

import com.music.bean.Music;
import com.music.bean.Singer;
import com.music.bean.SongList;
import com.music.bean.User;

import java.util.List;
import java.util.Map;

public interface Songservice {
    //查看所有歌单
    List<SongList> getSongListAll();

    //添加歌单
    int insertSongList(Map<String, Object> map);
}
