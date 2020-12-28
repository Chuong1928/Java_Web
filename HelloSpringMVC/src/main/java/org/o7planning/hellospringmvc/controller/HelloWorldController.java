package org.o7planning.hellospringmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class HelloWorldController {
 
    @RequestMapping("/hello")
//    public String hello(Model model) {
//        
//        model.addAttribute("greeting", "Hello Spring MVC");
//        
//        return "helloworld";
//        
//    }
    public ModelAndView abc(Model model,HttpServletRequest request) {
    	model.addAttribute("greeting","hello spring mvc");
    	String [] ds = {"truong","hoa","hihi"};
    	model.addAttribute("ds",ds);
    	return new ModelAndView("helloworld");
    }
}