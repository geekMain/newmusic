package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder

public class UserOperationLog {
    private Integer userOperationLogId;//主键
    private String logUUID;//UUID
    private Integer indexId;//界面id
    private String operationTime;//操作时间
}
