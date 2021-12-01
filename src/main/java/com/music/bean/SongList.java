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
    private Integer songId;
    private Integer userId;
    private String songName;
    private Data songCreateTime;
    private String songIntroduce;
    private Integer songCount;
}
