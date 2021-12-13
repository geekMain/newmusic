package com.music.service;

import com.music.bean.MusicStyle;
import com.music.bean.Singer;

import java.util.List;

public interface MusicStyleService {
  //查询表中的所有数据
  List<MusicStyle> queryAllStyle();
}
