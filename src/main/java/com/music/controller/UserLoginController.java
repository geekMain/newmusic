package com.music.controller;

import com.music.bean.SysLog;
import com.music.bean.User;
import com.music.bean.UserLogin;
import com.music.service.SysLogService;
import com.music.service.UserLoginService;
import com.music.service.UserService;
import com.music.util.LogUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/userLogin")
public class UserLoginController {

    @Autowired
    UserLoginService userLoginService;
    @Autowired
    UserService userService;
    @Autowired
    SysLogService sysLogService;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping(value ="/index",method = RequestMethod.POST)
    public String login(UserLogin user, Model model, HttpServletRequest request, HttpSession session){
 /*       User userInfo = userService.getUser(userLoginService.getUserLogin(user));
        if (userLoginService.getUserLogin(user) == null){
            model.addAttribute("msg","layer.msg('账号或密码错误！')");
            return "login";
        }
        if (userLoginService.getUserAdmin(userLoginService.getUserLogin(user).getId()) == null){
            model.addAttribute("msg","layer.msg('用户不是管理员！')");
            return "login";
        }
        session.setAttribute("user",userInfo);

        Map<String,Object> objectMap = new LogUtil().getInformation(request);
        SysLog sysLog = new SysLog();

        sysLog.setUserId(userInfo.getUserId());
        sysLog.setLoginDevice(objectMap.get("device").toString());
        sysLog.setSysUserName(objectMap.get("sysUserName").toString());
        sysLog.setSysName(objectMap.get("sysUser").toString());
        sysLog.setLoginBrowser(objectMap.get("browser").toString());
        sysLog.setLoginAddress(objectMap.get("ip4").toString());
        sysLog.setLoginTime(objectMap.get("date").toString());
        sysLog.setLogUUID(UUID.randomUUID().toString().replaceAll("-",""));

        int s = sysLogService.addSysLog(sysLog);
        int ss = sysLogService.addUserLog(sysLog.getLogUUID());*/

        return "admin";
    }
}
