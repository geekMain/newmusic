package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder

//会员用户信息
public class UserVip {
    private Integer vipId;//会员用户主键
    private Integer userId;//用户id
}
