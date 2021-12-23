package com.music.service;

import com.music.bean.InformationInteraction;

import java.util.List;
import java.util.Map;

public interface InformationInteractionService {

  //查看所有
  List<InformationInteraction> queryAllInteraction();

  //查找 根据指定的id1 和 id2 来查找数据
  List<InformationInteraction> queryInteraction(Map<String,Object> map);
}
