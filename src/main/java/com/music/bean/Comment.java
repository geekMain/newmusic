package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Time;
import java.sql.Timestamp;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//sys_comment评论
public class Comment {
    private Integer id;//评论主键
    private Integer userId;//发布者id
    private String comContext;//评论内容
    private Integer objId;//歌单或者歌曲id
    private Integer comType;//评论分类（歌单1，歌曲2）
    private Timestamp comTime;//评论的时间
    private Integer comNumber;//评论的点赞数量
}
