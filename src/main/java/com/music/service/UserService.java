package com.music.service;

import com.music.bean.User;
import com.music.bean.UserLogin;

import java.util.List;

public interface UserService {
    public User getUser(UserLogin userLogin);

    public List<User> getUserAll();

    public  Integer userDelete(Integer userId);

    public Integer userAdd (UserLogin userLogin);

    Integer userInformationAdd(User user);

    Integer userSeeInformation(UserLogin userLogin);
}
