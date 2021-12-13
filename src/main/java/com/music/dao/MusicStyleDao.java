package com.music.dao;

import com.music.bean.MusicStyle;
import com.music.bean.Singer;

import java.util.List;

public interface MusicStyleDao {
  //查询表中的所有数据
  List<MusicStyle> queryAllStyle();
}
