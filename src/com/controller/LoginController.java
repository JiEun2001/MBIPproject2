package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/account")
public class LoginController {

	@GetMapping("/")
	public ModelAndView signIn() {
		ModelAndView modelAndView = new ModelAndView("/signIn");

		return modelAndView;
	}

	@PostMapping("/signIn")
	public ModelAndView signIn(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, ModelMap modelMap) {
		
	
		ModelAndView modelAndView = new ModelAndView("/signIn");

		return modelAndView;
	}
}
