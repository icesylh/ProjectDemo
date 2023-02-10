package com.xxx.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xxx.common.R;
import com.xxx.entity.User;
import com.xxx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("user")
@CrossOrigin
public class UserController {
    @Autowired
    UserService service;

    @PostMapping("/login")
    public R login(@RequestBody String str) {
        JSONObject obj = JSON.parseObject(str);
        String username = obj.getString("username");
        String password = obj.getString("password");
        User user = service.getUser(username, password, 1);
        if (user == null) {
            return R.error("User Not Exits");
        }
        return R.success(user);
    }


    @PostMapping("app/login")
    public R applogin(@RequestBody String str) {
        JSONObject obj = JSON.parseObject(str);
        String username = obj.getString("username");
        String password = obj.getString("password");

        User user = service.getUser(username, password, 0);
        if (user == null) {
            return R.error("User Not Exits");
        }
        return R.success(user);
    }


    @GetMapping("/names")
    public R listname() {
        List<String> names = service.getUserNames();
        return R.success(names);
    }

}
