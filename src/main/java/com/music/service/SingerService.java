package com.music.service;

import com.music.bean.Singer;

import java.util.List;

//歌手
public interface SingerService {
  //查询表中的所有数据
  List<Singer> queryAllSinger();

}
