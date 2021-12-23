package com.music.service.serviceimpl;

import com.music.bean.SysLog;
import com.music.bean.UserOperationLog;
import com.music.dao.SysLogDao;
import com.music.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

@Service
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    SysLogDao sysLogDao;


    @Override
    public int addSysLog(SysLog sysLog) {
        return sysLogDao.addSysLog(sysLog);
    }

    @Override
    public int addUserLog(String uuid) {
        return sysLogDao.addUserLog(uuid);
    }
}
