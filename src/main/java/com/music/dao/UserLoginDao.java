package com.music.dao;

import com.music.bean.UserLogin;

public interface UserLoginDao {
    public UserLogin getUserLogin(UserLogin userLogin);

    public Integer getUserAdmin(Integer id);
}
