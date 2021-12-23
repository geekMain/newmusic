package com.music.dao;

import com.music.bean.InformationInteraction;
import com.music.bean.InformationLibrary;

import java.util.List;

public interface InformationLibraryDao {
  /**
   * 这里只需要写 查询坐标就像
   * */
  //查看所有坐标
  List<InformationLibrary> queryAllLibrary();
}
