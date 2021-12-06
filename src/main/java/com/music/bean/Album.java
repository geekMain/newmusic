package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder

//专辑
public class Album {
    private Integer albumId;//专辑id
    private String albumName;//专辑名字
    private Integer albumSingerId;//专辑歌手id
    private String issuingReleaseTime;//专辑发布时间
    private Integer companyId;//专辑发行公司
    private String introduce;//专辑介绍

}
