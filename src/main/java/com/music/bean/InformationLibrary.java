package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
public class InformationLibrary {
/**
 * 聊天库的坐标
 * */
  private Integer infLibrary; // 坐标
  private Integer infObjId1;  // 对象1
  private Integer infObjId2;  // 对象2
}
