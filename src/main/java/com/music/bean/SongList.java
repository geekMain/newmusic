package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//歌单
public class SongList {
    private Integer songId;//歌单主键
    private Integer userId;//用户id
    private String songName;//歌单名字
    private String songCreateTime;//歌单创建时间
    private String songIntroduce;//歌单介绍
    private Integer songCount;//歌单浏览量
}
