package com.music.service;


import com.music.bean.SongList;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Songservice {
    //查看所有歌单
    List<SongList> getSongListAll();

    //单个查询歌单
    SongList getSongAll(int songId);

    //添加歌单
    int insertSongList(SongList songList);

    //删除歌单
    int deleteSongList(@Param("songId") int songId);
}
