package com.music.controller;

import com.music.bean.Comment;
import com.music.dao.CommentDao;
import com.music.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/comment")
public class CommentController {

  @Autowired
  CommentService commentService;
  @RequestMapping("/com/{id1}/{id2}")
  public String commentPrint(@PathVariable int id1, @PathVariable int id2, Model model){
	System.out.println(id1);
	System.out.println(id2);
	Map<String,Object> map = new HashMap<>();
	map.put("id1",id1);
	map.put("id2",id2);
	List<Comment> comments = commentService.PrintComment(map);
	model.addAttribute("list",comments);
	return "userMana/comment/commentPrint";
  }
}
