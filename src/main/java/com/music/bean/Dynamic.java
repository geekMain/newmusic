package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
public class Dynamic {
    private Integer dynamicId;
    private Integer userId;
    private Integer friendId;
    private Data DynamicTime;
    private String DynamicText;
}
