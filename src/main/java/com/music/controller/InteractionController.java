package com.music.controller;


import com.music.bean.InformationInteraction;
import com.music.service.InformationInteractionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Information")
public class InteractionController {

  @Autowired
  InformationInteractionService interactionService;

  //父页面传值给子页面
  @RequestMapping("/com/{id1}")
  public String commentPrint(@PathVariable int id1, Model model){
	System.out.println(1);
	Map<String,Object> map = new HashMap<>();
	map.put("id1",id1);
	List<InformationInteraction> informationInteractions = interactionService.queryInteraction(map);
	model.addAttribute("list1",informationInteractions);
	return "userMana/Information/Information";
  }

}
