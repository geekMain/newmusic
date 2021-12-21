package com.music.dao;

import com.music.bean.User;
import com.music.bean.UserLogin;

import java.util.List;

public interface UserDao {
    public User getUser(UserLogin userLogin);

    public List<User> getUserAll();

    public  Integer userDelete(Integer userId);
}
