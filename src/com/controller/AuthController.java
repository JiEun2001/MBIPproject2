package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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

import model.user;

@Controller
public class AuthController {

	@GetMapping("/")
	public ModelAndView signIn() {
		ModelAndView modelAndView = new ModelAndView("/signIn");

		return modelAndView;
	}

	@PostMapping("/authenticate")
    public ModelAndView authenticate(@RequestParam("email") String email,
                               @RequestParam("password") String password,
                               HttpSession session) {

        String dbURL = "jdbc:mysql://localhost:3306/mbip";
        String dbusername = "root";
        String dbpassword = "";

        ModelAndView modelAndView = new ModelAndView();
        
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			 // Creating JDBC Statement
	        String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
	        PreparedStatement stnt = conn.prepareStatement(sql);
	        stnt.setString(1, email);
	        stnt.setString(2,password);

	        //execute query
	        ResultSet rs = stnt.executeQuery();
	        
	        //if exist
	        if(rs.next()) {
	        	//success
	        	
	        	int uid = rs.getInt("uid");
	        	String name= rs.getString("username");
	        	session.setAttribute("uid",uid);
	        	session.setAttribute("name", name);
	        	
//	        	modelAndView.setViewName("/userHomepage");
	        	modelAndView.setViewName("redirect:/user/");
	        }else {
	        	//failed
	        	
	        	
	        }
	        
	        
			// close
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
        

        return modelAndView;
    }
	

	@GetMapping("/signUp")
	public ModelAndView signUp() {
		ModelAndView modelAndView = new ModelAndView("/signUp");

		return modelAndView;
	}

	@PostMapping("/register")
    public ModelAndView register(@RequestParam("email") String email,
                                 @RequestParam("password") String password,@RequestParam("confirmpwd") String confirmpwd,@RequestParam("phone") int phone ,@RequestParam("address") String address, @RequestParam("username") String username,
                                 HttpSession session) {
		
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbusername = "root";
		String dbpassword = "";
		
		boolean check = false;
		ModelAndView modelAndView = new ModelAndView();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			 // Creating JDBC Statement
	        String sql = "SELECT * FROM user WHERE email = ?";
	        PreparedStatement stnt = conn.prepareStatement(sql);
	        stnt.setString(1, email);

	        // Execute query
	        ResultSet rs = stnt.executeQuery();

			if(rs.next()) {
				check = true;
			}

	        
			while (rs.next()) {

				user user = new user();
				if(email.equals(user.getEmail())  || password != confirmpwd) {
					check = true;
					break;
				}

			}
			if(!check  && password != null &&  password.equals(confirmpwd)) {
				String sqlstmt = "INSERT INTO user (email, password,username,address,phone) VALUES (?,?,?,?,?)";
				PreparedStatement stmt = conn.prepareStatement(sqlstmt);


				stmt.setString(1, email);
	            stmt.setString(2, password);
	            stmt.setString(3, username);
	            stmt.setString(4, address);
	            stmt.setInt(5, phone);
	            
	            stmt.executeUpdate();
	      
	            modelAndView = new ModelAndView("redirect:/account/"); // redirect to login page
			}else {
				modelAndView.setViewName("/signUp");
			    modelAndView.addObject("error", "Registration failed. Please try again.");
			}
			// close
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		
        return modelAndView;
    }
}
