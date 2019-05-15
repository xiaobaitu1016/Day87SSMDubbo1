package com.qf.controller;

import com.qf.pojo.User;
import com.qf.service.IUserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class UserController {

    @Resource
    private IUserService userService;

    @GetMapping("/user")
    public List<User> getAll(){
        return userService.getAllUser();
    }

}
