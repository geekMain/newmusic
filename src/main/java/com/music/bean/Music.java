package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
public class Music {
    private Integer musicId;
    private Integer styleId;
    private String musicName;
    private String musicLength;
    private String musicTextName;
    private Integer singerId;
}
