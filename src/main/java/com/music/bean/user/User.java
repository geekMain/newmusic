package com.music.bean.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
public class User {
    private Integer id;
    private String username;
    private String introduce;
    private Integer sex;
    private Date birthday;
    private String avatar;
    private String area;
    private Date registerDate;


}