package com.navesh.ECom.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Ping {
    @GetMapping("/ping")
    public String ping(){
        return "Server pinged! <br> Starting Server...";
    }
}
