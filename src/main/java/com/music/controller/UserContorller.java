package com.music.controller;

import com.music.bean.User;
import com.music.bean.UserLogin;
import com.music.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.SimpleDateFormat;
import java.util.Date;

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

    //----------增
    @RequestMapping(value ="/userLoginAdd",method = RequestMethod.POST)
    public String userAdd (UserLogin userLogin,Model model) {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        userLogin.setUserRegisterDate(formatter.format(date));
        int s = userService.userAdd(userLogin);
        model.addAttribute("userList",userService.getUserAll());
        return "mainBody/userMana";
    }

    //-------------改
    @RequestMapping(value = "/userInformationAdd",method = RequestMethod.POST)
    public String userInformationAdd(User user,Model model) {
        userService.userInformationAdd(user);
        model.addAttribute("userList",userService.getUserAll());
        return "mainBody/userMana";
    }

    //用户管理 -----查用户信息
    @RequestMapping("/userMana")
    public String userSeeInformation(Model model){
        model.addAttribute("userList",userService.getUserAll());
        return "mainBody/userMana";}
}

