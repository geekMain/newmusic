package com.music.service;

import com.music.bean.InformationLibrary;

import java.util.List;

public interface InformationLibraryService {

  //查看所有坐标
  List<InformationLibrary> queryAllLibrary();
}
