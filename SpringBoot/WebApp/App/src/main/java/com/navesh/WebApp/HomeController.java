package com.navesh.WebApp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(){
        System.out.println("Home method invoked...");
        return "index";
    }

    @RequestMapping("/add")
    public ModelAndView add(@RequestParam("num1") int a, @RequestParam("num2") int b, ModelAndView mv){

        int res = a+b;
        mv.addObject("result",res);
        mv.setViewName("result");

        return mv;
    }
    @RequestMapping("/addUser")
    public String addUser(User user){
        return "result";
    }

    @ModelAttribute("course")
    public String courseName(){
        return "Java";
    }
}
