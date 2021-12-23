package com.music.service.serviceimpl;

import com.music.bean.User;
import com.music.bean.UserLogin;
import com.music.dao.UserDao;
import com.music.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Override
    public User getUser(UserLogin userLogin) {
        return userDao.getUser(userLogin);
    }

    @Override
    public List<User> getUserAll() {
        return userDao.getUserAll();
    }

    @Override
    public Integer userDelete(Integer userId) {
        return userDao.userDelete(userId);
    }

    @Override
    public Integer userAdd(UserLogin userLogin) {
        return userDao.userLoginAdd(userLogin);
    }
}
