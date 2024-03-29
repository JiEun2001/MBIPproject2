package com.controller;

import model.Electric;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/electricForm")
public class ElectricFormController {

	@GetMapping("/")
	public ModelAndView showElectricConsumptionForm() {
		ModelAndView modelAndView = new ModelAndView("/electricForm");
		return modelAndView;
	}

	@PostMapping("/submit-consumption")
	public ModelAndView SubmitElectric(@RequestParam("date") String date,
			@RequestParam("meterReading") int meterReading, 
			@RequestParam("comments") String comments, 
			HttpSession session) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbUsername = "root";
		String dbPassword = "";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
			int Uid = (int) session.getAttribute("uid");
			
			// Calculate consumption
	        double elco = meterReading * 0.584;
			
			String sql = "INSERT INTO electric_consumption (Uid, date, meter_reading, comments, elco) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			
			statement.setInt(1,Uid);
	        statement.setString(2,date);
	        statement.setInt(3, meterReading);
	        statement.setString(4, comments);
	        statement.setDouble(5, elco);
	        
	        statement.executeUpdate();
	        
	        modelAndView = new ModelAndView("redirect:/user/");
			
	        conn.close();
	        
		} catch (SQLException ex) {
			modelAndView.setViewName("/electricForm");
		    modelAndView.addObject("error", "Please try again.");
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			modelAndView.setViewName("/electricForm");
		    modelAndView.addObject("error", "Please try again.");
			ex.printStackTrace();
		}
		
		
		return modelAndView;
	}
}
