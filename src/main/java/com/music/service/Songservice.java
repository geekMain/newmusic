package com.music.service;


import com.music.bean.SongList;
import com.music.bean.User;

import java.util.List;

public interface Songservice {
    //查看所有歌单
    List<SongList> getSongListAll();

    SongList getSongAll(int songId);

    //添加歌单
    /*int insertSongList(Map<String, Object> map);*/
}
