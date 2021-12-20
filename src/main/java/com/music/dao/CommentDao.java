package com.music.dao;

import com.music.bean.Comment;

import java.util.List;
import java.util.Map;

//评论---comment
public interface CommentDao {
  // 查询所有 Comment
  List<Comment> queryAllComment();
  // 查询指定内容：查询其中的评论对象id 和 评论的类型
  List<Comment> NewAllComment();
  //查询 通过指定的obj_id 和 com_type 来查询指定的数据
  List<Comment> PrintComment(Map<String,Object> map);
  //删除 指定的 评论
  int deleteComment(int id);
}
