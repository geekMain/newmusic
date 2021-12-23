package com.music.controller;

import com.music.bean.Comment;
import com.music.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/userCenterMana")
public class UserCenterManagementController {
    @Autowired
    Songservice Songlists;
    @Autowired
    CommentService commentService;
    @Autowired
    SingerService singer;
    @Autowired
    UserService userService;
    @Autowired
    UserLoginService userLoginService;
    @Autowired
    SysLogService sysLogService;

    @RequestMapping("/fanMana")
    public String fanMana(){
        return "userMana/fanMana";
    }
    @RequestMapping("/informMana")
    public String inforMana(){
        return "userMana/informMana";
    }

    @RequestMapping("/logMana")
    public String logMana(){
        return "userMana/logMana";
    }

    @RequestMapping("/collectMana")
    public String collectMana(){
        return "userMana/collectMana";
    }

    //查询所有歌单---hxc
    @RequestMapping("/songListMana")
    public String songListMana(Model model){
        model.addAttribute("list",Songlists.getSongListAll());
        return "userMana/songListMana";
    }

    // 查看评论
    @RequestMapping("/commentMana")
    public String commentMana(Model model){
        // 获取到单个对象
        List<Comment> comments = commentService.NewAllComment();
        model.addAttribute("list",comments);
        model.addAttribute("list1",commentService.queryAllComment());
        model.addAttribute("list3",Songlists.getSongListAll()); //歌单
        model.addAttribute("list4",singer.queryAllSinger()); //歌曲
        return "userMana/commentMana";
    }
}