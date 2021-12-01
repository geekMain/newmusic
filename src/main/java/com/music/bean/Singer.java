package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//歌手
public class Singer {
    private Integer singerId;//歌手主键
    private String singerName;//歌手名字
    private Integer nationalityId;//歌手国籍
}
