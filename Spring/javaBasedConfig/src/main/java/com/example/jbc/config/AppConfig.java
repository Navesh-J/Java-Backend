package com.example.jbc.config;

import com.example.jbc.Alien;
import com.example.jbc.Computer;
import com.example.jbc.Desktop;
import com.example.jbc.Laptop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.*;

@Configuration
@ComponentScan("com.example.jbc")
public class AppConfig {

//    @Bean(name = {"desktop_bean","desktop1","bean1"})
////    @Scope("prototype")
//    public Desktop desktop(){
//        return new Desktop();
//    }
//
//    @Bean
//    public Alien alien(@Autowired Computer com){  //@Qualifier("desktop1")
//        Alien obj = new Alien();
//        obj.setAge(25);
//        obj.setCom(com);
//        return obj;
//    }
//
//    @Bean
//    @Primary
//    public Laptop laptop(){
//        return new Laptop();
//    }
}
