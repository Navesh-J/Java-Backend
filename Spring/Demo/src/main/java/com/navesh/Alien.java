package com.navesh;

public class Alien {
    private int age;
    private Laptop lap;

    public Alien(){
        System.out.println("Constructor object");
    }
    public Alien(int age,Laptop laptop){
        this.age=age;
        this.lap = laptop;
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

    public void code(){
        System.out.println("Coding");
        System.out.println(age);
        lap.compile();
    }
}
