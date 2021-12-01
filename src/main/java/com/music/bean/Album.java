package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
public class Album {
    private Integer albumId;
    private String albumName;
    private Integer albumSingerId;
    private Data issuingReleaseTime;
    private Integer companyId;
    private String introduce;

}
