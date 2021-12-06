package com.music.dao;

import com.music.bean.User;
import com.music.bean.UserLogin;

public interface UserDao {
    public User getUser(UserLogin userLogin);
}
