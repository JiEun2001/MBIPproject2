package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/Homepage")
    public String home() {
        return "/Homepage"; // Redirect to the form page or a home page
    }
    
    @GetMapping("/Home")
    public String home2() {
        return "/Home"; // Redirect to the form page or a home page
    }
    
    
    @GetMapping("/MBIPproject2/WebContent/images/homepage.png")
    public String homepage() {
        return "/images/homepage.png"; // Redirect to the form page or a home page
    }
}
