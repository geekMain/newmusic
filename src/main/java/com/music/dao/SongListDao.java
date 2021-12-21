package com.music.dao;

import com.music.bean.SongList;
import com.music.bean.User;
import java.util.List;
import java.util.Map;

public interface SongListDao {
    //查询所有歌单
    List<SongList> getSongListAll();

    //查询单个歌单
    SongList getSongAll(int songId);

    //添加歌单
    /*int insertSongList(Map<String, Object> map);*/

}
