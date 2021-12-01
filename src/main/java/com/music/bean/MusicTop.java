package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//歌曲热度
public class MusicTop {
    private Integer topId;//热度主键
    private Integer userId;//用户id
    private Integer musicId;//歌曲id
}
