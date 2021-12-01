package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//歌曲
public class Music {
    private Integer musicId;//歌曲主键
    private Integer styleId;//风格id
    private String musicName;//歌曲名字
    private String musicLength;//歌曲时长
    private String musicTextName;//歌词文件名
    private Integer singerId;//歌手id
}
