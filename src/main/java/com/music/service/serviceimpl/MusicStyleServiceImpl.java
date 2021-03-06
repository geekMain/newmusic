package com.music.service.serviceimpl;

import com.music.bean.MusicStyle;
import com.music.bean.Singer;
import com.music.dao.MusicStyleDao;
import com.music.service.MusicStyleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MusicStyleServiceImpl implements MusicStyleService {

  @Resource
  MusicStyleDao style;

  //查询表中的所有数据
  @Override
  public List<MusicStyle> queryAllStyle() {
    return style.queryAllStyle();
  }
}
