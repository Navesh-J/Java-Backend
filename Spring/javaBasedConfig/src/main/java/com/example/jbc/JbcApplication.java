package com.example.jbc;

import com.example.jbc.config.AppConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


@SpringBootApplication
public class JbcApplication {

	public static void main(String[] args){
		ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

//		Desktop dt = context.getBean("desktop_bean",Desktop.class);
//		dt.compile();
//
//		Desktop dt1 = context.getBean("desktop_bean",Desktop.class);
//		dt1.compile();

		Alien obj = context.getBean(Alien.class);
		System.out.println(obj.getAge());
		obj.code();

	}
}
