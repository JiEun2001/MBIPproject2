package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;




import model.WaterUsage;
import db.util.DBconnect;

@Controller
@RequestMapping("/form")
public class FormController {


    private final DBconnect dbconnect;

    @Autowired
    public FormController(DBconnect dbconnect) {
    	this.dbconnect = dbconnect;
       
        // Add other observers as needed
    }
    
    @GetMapping("/show")
    public String showForm() {
       // return "/waterForm"; // Replace "waterForm" with the actual name of your JSP file
    	 return "/waterForm"; 
    }
    

    @PostMapping("/submit")
    public String handleFormSubmission(@ModelAttribute WaterUsage waterUsage, HttpServletRequest request, HttpSession session) {
        //String formData = request.getParameter("formData"); // replace with actual form data
        //observers.forEach(observer -> observer.update(waterUsage));
    	//waterUsage.setUid((String) session.getAttribute("UID"));
        dbconnect.saveWaterUsage(waterUsage);

        return "redirect:/user/"; // Redirect to a success page or similar
    }

}
