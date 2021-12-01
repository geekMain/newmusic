package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
//sys_comment评论
public class Comment {
    private Integer id;
    private Integer userId;
    private String comContext;
    private Integer objId;
    private Integer comType;
}
