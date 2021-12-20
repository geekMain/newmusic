package com.music.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor  /*无参构造器*/
@AllArgsConstructor
@Builder
public class SysLog {
    private Integer sysLogId;//主键
    private Integer userId;//用户id
    private String loginDevice;//登录设备
    private String loginBrowser;//登录浏览器
    private String loginIp;//登录ip
    private String loginAddress;//登录地址
    private String loginTime;//登录时间
    private Integer userOperationLogId;//用户操作日志id
}
