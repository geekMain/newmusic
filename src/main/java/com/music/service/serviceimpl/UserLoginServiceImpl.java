package com.music.service.serviceimpl;

import com.music.bean.UserLogin;
import com.music.dao.UserLoginDao;
import com.music.service.UserLoginService;

public class UserLoginServiceImpl implements UserLoginService {
    private UserLoginDao userLoginDao;

    @Override
    public UserLogin getUserLogin() {
        return userLoginDao.getUserLogin();

    }
}
