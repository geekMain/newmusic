package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder

public class UserLogin {
    private Integer id;
    private String userCount;
    private String userPassword;
    private Data userRegisterDate;
}
