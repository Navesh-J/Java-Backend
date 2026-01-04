package com.example.jbc;

import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Primary // Qualifier will get preference
@Scope("singleton")
public class Laptop implements Computer {
    public Laptop(){
        System.out.println("Laptop object created");
    }
    @Override
    public void compile()
    {
        System.out.println("Compiling using Laptop");
    }
}
