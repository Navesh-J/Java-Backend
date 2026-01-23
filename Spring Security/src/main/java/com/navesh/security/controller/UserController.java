package com.navesh.security.controller;

import com.navesh.security.model.User;
import com.navesh.security.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/users")
    public List<User> getUserss(){
        return userService.getUsers();
    }
    @PostMapping("/register")
    public User register(@RequestBody User user){
        return userService.saveUser(user);
    }
}
