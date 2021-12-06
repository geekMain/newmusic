package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder

//登录，用户账号密码
public class UserLogin {
    private Integer id;//账号密码主键
    private String userCount;//用户账号
    private String userPassword;//用户密码
    private String userRegisterDate;//用户注册时间
}
