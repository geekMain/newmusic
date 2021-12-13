package com.music.service.serviceimpl;

import com.music.bean.MusicStyle;
import com.music.bean.Singer;
import com.music.dao.MusicStyleDao;
import com.music.service.MusicStyleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class MusicStyleServiceImpl implements MusicStyleService {

  @Autowired
  MusicStyleDao style;

  //查询表中的所有数据
  @Override
  public List<MusicStyle> queryAllStyle() {
    return style.queryAllStyle();
  }
}
