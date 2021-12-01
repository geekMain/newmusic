package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder

public class User {
    private Integer userId;
    private Integer userLoginId;
    private String username;
    private String introduce;
    private String sex;
    private Data userBirthday;
    private String userAvatar;
    private String userArea;
}
