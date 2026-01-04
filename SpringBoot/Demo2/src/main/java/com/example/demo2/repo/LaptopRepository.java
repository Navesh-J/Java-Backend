package com.example.demo2.repo;

import com.example.demo2.model.Laptop;
import org.springframework.stereotype.Repository;

@Repository
public class LaptopRepository {
    public void save(Laptop lap){
        System.out.println("Laptop saved in Database");
    }
}
