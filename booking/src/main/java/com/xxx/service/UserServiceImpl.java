package com.xxx.service;

import com.xxx.entity.User;
import com.xxx.entity.UserExample;
import com.xxx.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper mapper;

    @Override
    public User getUser(String username, String password, int role) {
        UserExample example = new UserExample();
        example.createCriteria()
                .andAccountEqualTo(username)
                .andPwdEqualTo(password)
                .andRoleEqualTo(role);

        List<User> users = mapper.selectByExample(example);
        return users != null && users.size() > 0 ? users.get(0) : null;
    }

    @Override
    public List<String> getUserNames() {
        UserExample example = new UserExample();
        example.createCriteria().andRoleEqualTo(0);
        List<User> users = mapper.selectByExample(example);
        List<String> names = new ArrayList<>();
        for (User user : users) {
            if(!names.contains(user.getAccount())){
              names.add(user.getAccount());
            }
        }
        return names;
    }
}
