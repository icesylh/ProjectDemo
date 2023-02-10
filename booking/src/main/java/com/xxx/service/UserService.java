package com.xxx.service;


import com.xxx.entity.User;

import java.util.List;

public interface UserService {

    User getUser(String username, String password,int role);

    List<String> getUserNames();
}
