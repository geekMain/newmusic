package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder

//用户
public class User {
    private Integer userId;//用户主键
    private Integer userLoginId;//账号密码主键
    private String username;//用户名称
    private String introduce;//用户介绍
    private String sex;//用户性别
    private String userBirthday;//用户生日
    private String userAvatar;//用户头像
    private String userArea;//用户地址
}
