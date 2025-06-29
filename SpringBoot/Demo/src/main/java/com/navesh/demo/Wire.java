package com.navesh.demo;

import org.springframework.stereotype.Component;

@Component
public class Wire {
    public void print(){
        System.out.println("Components need to be wired among themselves \nFor now stick to @AutoWiring");
    }
}
