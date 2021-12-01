package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//好友信息表
public class Information {
    private Integer id;//好友主键
    private Integer userId;//用户id
    private Integer friendId;//好友id
}
