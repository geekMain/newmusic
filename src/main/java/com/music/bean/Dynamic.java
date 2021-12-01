package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//好友动态信息
public class Dynamic {
    private Integer dynamicId;//好友动态信息主键
    private Integer userId;//用户id
    private Integer friendId;//好友id
    private Data DynamicTime;//发表时间
    private String DynamicText;//发表内容
}
