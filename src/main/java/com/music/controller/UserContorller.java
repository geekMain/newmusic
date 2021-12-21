package com.music.controller;


import com.music.bean.User;
import com.music.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserContorller {
    @Autowired
    UserService userService;

    //-----------------用户删除
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


    @RequestMapping("/addUser")
    @ResponseBody
    public Object userAdd (User user) {

        return null;
    }
}

