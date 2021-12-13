package com.music.dao;

import com.music.bean.Singer;

import java.util.List;

//歌手
public interface SingerDao {
  //查询表中的所有数据
  List<Singer> queryAllSinger();

}
