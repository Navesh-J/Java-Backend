package com.navesh.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Hello {

    @Autowired
    Wire obj;

    public void print(){
        System.out.println("Welcome to My Spring Application");
        obj.print();
    }
}
