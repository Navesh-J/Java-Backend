package com.example.jbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Alien {

    @Value("21")
    private int age;

    private Laptop lap;

//    @Autowired
//    @Qualifier("laptop")
    private Computer com;

    public Alien(){
        System.out.println("Alien Constructor object");
    }
    public Alien(int age,Laptop laptop, Computer com){
        this.age=age;
        this.lap = laptop;
        this.com = com;
    }
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Laptop getLap() {
        return lap;
    }

    public void setLap(Laptop lap) {
        this.lap = lap;
    }

    public void codeLap(){
        System.out.println("Coding");
        lap.compile();
    }

    @Autowired
    public void setCom(Computer com) {
        this.com = com;
    }

    public void code() {
        System.out.println("Coding");
        com.compile();
    }
}
