package com.music.controller;

import com.music.bean.User;
import com.music.bean.UserLogin;
import com.music.service.UserLoginService;
import com.music.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/userLogin")
public class UserLoginController {

    @Autowired
    UserLoginService userLoginService;
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping(value ="/index",method = RequestMethod.POST)
    public String login(UserLogin user, Model model){
        if (userLoginService.getUserLogin(user) == null){
            model.addAttribute("msg","layer.msg('账号或密码错误！')");
            return "login";
        }
        if (userLoginService.getUserAdmin(userLoginService.getUserLogin(user).getId()) == null){
            model.addAttribute("msg","layer.msg('用户不是管理员！')");
            return "login";
        }
        model.addAttribute("user",userService.getUser(userLoginService.getUserLogin(user)));
        return "admin";
    }
}
