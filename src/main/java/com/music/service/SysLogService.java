package com.music.service;
import com.music.bean.SysLog;

public interface SysLogService {
    public int addSysLog(SysLog sysLog);
    public int addUserLog(String uuid);
}
