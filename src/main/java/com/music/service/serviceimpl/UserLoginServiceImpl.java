package com.music.service.serviceimpl;

import com.music.bean.UserLogin;
import com.music.dao.UserLoginDao;
import com.music.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserLoginServiceImpl implements UserLoginService {

    @Autowired
    UserLoginDao userLoginDao;

    @Override
    public UserLogin getUserLogin(UserLogin userLogin) {
        return userLoginDao.getUserLogin(userLogin);
    }
}
