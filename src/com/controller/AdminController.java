package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {

	
	@GetMapping("/")
    public ModelAndView userHomePage() {
        return new ModelAndView("/AdminHomepage");
    }

    @GetMapping("/logout")
    public ModelAndView logout(HttpSession session) {
        // Invalidate the session (remove all attributes and end the session)
//        session.invalidate();

        // Redirect to the login page after logout
        return new ModelAndView("redirect:/");
    }
}
