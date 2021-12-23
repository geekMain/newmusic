package com.music.service.serviceimpl;

import com.music.bean.Comment;
import com.music.dao.CommentDao;
import com.music.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class CommentServiceImpl implements CommentService {
  @Resource
  CommentDao commentDao;

  @Override
  public List<Comment> queryAllComment() {
	return commentDao.queryAllComment();
  }

  @Override
  public List<Comment> NewAllComment() {
    return commentDao.NewAllComment();
  }

  @Override
  public List<Comment> PrintComment(Map<String, Object> map) {
    return commentDao.PrintComment(map);
  }

  @Override
  public int deleteComment(int id) {
    return commentDao.deleteComment(id);
  }
}
