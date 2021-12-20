package com.music.dao;

import com.music.bean.Music;
import com.music.bean.Singer;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
/**
 这里需要主要，这里后去到东西
 * */



public interface MusicDao {
  //增加数据
  int insertMusic(Map<String, Object> map);
  //查询数据
  List<Music> queryAllSongs();
  //查询歌手的全部信息
  List<Singer> queryAllSinger();
}
