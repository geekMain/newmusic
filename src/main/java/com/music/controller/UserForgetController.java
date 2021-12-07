package com.music.controller;

import com.music.bean.UserLogin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userForget")
public class UserForgetController {

    @RequestMapping("/forget")
    public String forget(){
        return "forget";
    }

    @RequestMapping("/forgetPassword")
    public String forgetPassword(UserLogin userLogin,String captcha){
        System.out.println(userLogin.toString());
        System.out.println(captcha);
        return "forget";
    }
}
