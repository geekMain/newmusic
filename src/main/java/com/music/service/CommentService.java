package com.music.service;

import com.music.bean.Comment;

import java.util.List;
import java.util.Map;

public interface CommentService {
  // 查询所有 Comment
  List<Comment> queryAllComment();
  // 查看指定的 数据：obj_id type_id
  List<Comment> NewAllComment();
  //查询 通过指定的obj_id 和 com_type 来查询指定的数据
  List<Comment> PrintComment(Map<String,Object> map);
}
