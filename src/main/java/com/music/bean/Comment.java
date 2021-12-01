package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//sys_comment评论
public class Comment {
    private Integer id;//评论主键
    private Integer userId;//发布者id
    private String comContext;//评论内容
    private Integer objId;//对象id
    private Integer comType;//评论分类
}
