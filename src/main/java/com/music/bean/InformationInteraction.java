package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
public class InformationInteraction {
  /**
   * 用于信息聊天功能
   * */
  private Integer infId; //聊天主键(自增）
  private Integer infUserId; //发送对象id
  private Integer infObjId; //接受对象id
  private String infTest; //聊天内容
  private Timestamp infTime; // 评论的时间
  private Integer infLibrary; //库标
}
