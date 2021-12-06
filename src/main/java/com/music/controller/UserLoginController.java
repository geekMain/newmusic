package com.music.controller;

import com.music.bean.UserLogin;
import com.music.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/userLogin")
public class UserLoginController {

    @Autowired
    UserLoginService userLoginService;

    @RequestMapping(value ="/login",method = RequestMethod.POST)
    public String login(UserLogin user){
        UserLogin userLogin = userLoginService.getUserLogin(user);
        System.out.println(userLogin);
        return "redirect:/Page/admin";
    }
}
