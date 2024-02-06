package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import java.sql.PreparedStatement;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Electric;
import model.Transportation;
import model.recycle;
import model.WaterUsage;
import model.user;


@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "/Homepage"; // Redirect to the form page or a home page
    }
    
    @GetMapping("/Home")
    public String home2() {
        return "/Home"; // Redirect to the form page or a home page
    }
    
    @GetMapping("/track")
    public ModelAndView track(HttpSession session) {
    	String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbusername = "root";
		String dbpassword = "";
		user user = new user();
		List<user> users = new ArrayList<>();
		ModelAndView modelAndView = new ModelAndView("/TrackProgress");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			// creating JDBC Statement
			String sql = "Select * from user WHERE uid = ? ";
			 PreparedStatement stnt = conn.prepareStatement(sql);
	        stnt.setString(1, session.getId());
			// Execute query
	        ResultSet rs = stnt.executeQuery();

			// Get data
	        	
	        	String name= rs.getString("username");
	        	String address= rs.getString("address");
				
				

	        	modelAndView.addObject("address", address);
				modelAndView.addObject("name", name);
				
				
			// close
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		
		return modelAndView; // Redirect to the form page or a home page
    }
    
    
    
    
    
    
    
    @GetMapping("/MBIPproject2/WebContent/images/homepage.png")
    public String homepage() {
        return "/images/homepage.png"; // Redirect to the form page or a home page
    }
}
