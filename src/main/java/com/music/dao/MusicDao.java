package com.music.dao;

import com.music.bean.Music;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
/**
 这里需要主要，这里后去到东西
 * */



public interface MusicDao {
//  //查询数据
//  List<Music> selectMusic();
//  //修改数据
//  int updateMusic(Music music);
//  //删除数据
//  int deleteMusic(@Param("id") int musicId);
//  //查询单个
//  Music queryMusic(@Param("id") int musicId);
//  //增加数据
//  int insertMusic(Map<String, Object> map);

  List<Music> queryAllSongs();
}
