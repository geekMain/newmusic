package com.music.dao;

import com.music.bean.SysLog;
import com.music.bean.UserOperationLog;

import java.util.List;

public interface SysLogDao {

    public int addSysLog(SysLog sysLog);

    public List<SysLog> querySysLog();

    public int addOperationUserLog(String uuid);

}
