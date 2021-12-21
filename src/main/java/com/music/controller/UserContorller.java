package com.music.controller;


import com.music.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserContorller {

    @Autowired
    UserService userService;

    @RequestMapping("/userSelectALl")
    public String  userSelectALl (Model model) {
        return "mainBody/userMana";
    }

    @RequestMapping("/userDelete/{userId}")
    public String userDelete(@PathVariable int userId,Model model){
        int userdelete = userService.userDelete(userId);
        model.addAttribute("userList",userService.getUserAll());
        return "mainBody/userMana";
    }
}

