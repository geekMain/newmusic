package com.music.controller;

import com.music.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userLogin")
public class UserLoginController {

    @Autowired
    UserLoginService userLoginService;

    @RequestMapping("/login")
    public String login(String userCount,String userPassword){
        System.out.println(userCount);
        System.out.println(userPassword);

        return "admin";
    }
}
