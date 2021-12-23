package com.music.service;
import com.music.bean.SysLog;

import java.util.List;

public interface SysLogService {
    public int addSysLog(SysLog sysLog);

    public List<SysLog> querySysLog();

    public int addOperationUserLog(String uuid);
}
