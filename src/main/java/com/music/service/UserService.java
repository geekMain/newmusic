package com.music.service;

import com.music.bean.User;
import com.music.bean.UserLogin;

public interface UserService {
    public User getUser(UserLogin userLogin);
}
