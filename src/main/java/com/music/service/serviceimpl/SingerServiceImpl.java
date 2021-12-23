package com.music.service.serviceimpl;

import com.music.bean.Singer;
import com.music.dao.SingerDao;
import com.music.service.SingerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SingerServiceImpl implements SingerService {

  @Autowired
  SingerDao singer;

  //查询表中的所有数据
  @Override
  public List<Singer> queryAllSinger() {
	return singer.queryAllSinger();
  }

}
