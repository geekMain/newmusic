package com.music.service;

import com.music.bean.UserLogin;

public interface UserLoginService {

    public UserLogin getUserLogin(UserLogin userLogin);

    public Integer getUserAdmin(Integer id);
}
