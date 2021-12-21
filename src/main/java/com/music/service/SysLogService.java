package com.music.service;

import com.music.bean.SysLog;
import com.music.bean.UserOperationLog;

public interface SysLogService {
    public int addSysLog(SysLog sysLog);

    public int addUserLog(String uuid);
}
