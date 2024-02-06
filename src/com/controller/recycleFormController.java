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
@RequestMapping("/Recycle")
public class recycleFormController {

	@GetMapping("/")
	public ModelAndView showRecycleActivityForm() {
		ModelAndView modelAndView = new ModelAndView("/Recycle");
		return modelAndView;
	}

//    @PostMapping("/submit-consumption")
//    public String submitConsumption(@RequestParam("Uid") String Uid, @RequestParam("date") String date,HttpSession session) {
//        String dbURL = "jdbc:mysql://localhost:3306/mbip";
//        String dbUsername = "root";
//        String dbPassword = "";
//        
//
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
//            int Uid = (int) session.getAttribute("Uid");
//            String sql = "INSERT INTO electric_consumption (Uid, date, meter_reading, meter_number, comments) VALUES (?, ?, ?, ?, ?,)";
//            PreparedStatement statement = conn.prepareStatement(sql);
//            	  statement.setInt(1,Uid);
//                statement.setString(2, electric.getDate());
//                statement.setInt(3, electric.getMeterReading());
//                statement.setString(4, electric.getMeterNumber());
//                statement.setString(5, electric.getComments());
//
//                statement.executeUpdate();
//            
//        } catch (ClassNotFoundException | SQLException ex) {
//            ex.printStackTrace();
//            // Redirect to an error page and pass the error message as a request attribute
//            return "redirect:/errorPage?errorMessage=An error occurred while submitting the form. Please try again later.";
//        }
//
//        return "redirect:/account/";
//    }

	@PostMapping("/submit-reConsumption")
	public ModelAndView SubmitRecycle(@RequestParam("reItem") String reItem,
			@RequestParam("reWeight") double reWeight, 
			@RequestParam("reTotalItem") int reTotalItem, 
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
	        double reco = reWeight * 2.860;
			
			String sql = "INSERT INTO recycle_activity (Uid, reItem, reWeight, reTotalItem, reco) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			
			statement.setInt(1,Uid);
	        statement.setString(2,reItem);
	        statement.setDouble(3, reWeight);
	        statement.setInt(4, reTotalItem);
	        statement.setDouble(5, reco);
	        
	        statement.executeUpdate();
	        
	        modelAndView = new ModelAndView("redirect:/user/");
			
	        conn.close();
	        
		} catch (SQLException ex) {
			modelAndView.setViewName("/Recycle");
		    modelAndView.addObject("error", "Please try again.");
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			modelAndView.setViewName("/Recycle");
		    modelAndView.addObject("error", "Please try again.");
			ex.printStackTrace();
		}
		
		
		return modelAndView;
	}
}
