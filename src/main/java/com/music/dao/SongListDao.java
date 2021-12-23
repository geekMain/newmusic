package com.music.dao;

import com.music.bean.SongList;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SongListDao {
    //查询所有歌单
    List<SongList> getSongListAll();

    //查询单个歌单
    SongList getSongAll(int songId);

    //添加歌单
    int insertSongList(SongList songList);

    //删除歌单
    int deleteSongList(@Param("songId") int songId);

}
