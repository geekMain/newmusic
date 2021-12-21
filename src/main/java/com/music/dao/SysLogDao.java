package com.music.dao;

import com.music.bean.SysLog;
import com.music.bean.UserOperationLog;

public interface SysLogDao {

    public int addSysLog(SysLog sysLog);

    public int addUserLog(String uuid);

}
