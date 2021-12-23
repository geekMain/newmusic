package com.music.dao;

import com.music.bean.InformationInteraction;

import java.util.List;
import java.util.Map;

public interface InformationInteractionDao {
  /**
   * InformationInteraction的功能
   * 	查看所有消息
   * 	查看指定消息（使用map来写，防止没有必要的spl注入） 使用# 可以防止没必要的sql注入问题，而不是使用$
   * 	无修改
   * */
  //查看所有
  List<InformationInteraction> queryAllInteraction();

  //查找 根据指定的id1 和 id2 来查找数据
  List<InformationInteraction> queryInteraction(Map<String,Object> map);

}
