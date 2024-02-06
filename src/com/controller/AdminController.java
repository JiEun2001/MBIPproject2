package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@GetMapping("/")
	public ModelAndView adminHomepage() {

		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbusername = "root";
		String dbpassword = "";
		ModelAndView modelAndView = new ModelAndView("/AdminHomepage");
		// get user total
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			String sql = "SELECT * FROM user";
			Statement stnt = conn.createStatement();

			ResultSet rs = stnt.executeQuery(sql);

			int total = 0;
			// get data
			while (rs.next()) {
				total++;
			}
			modelAndView.addObject("userTotal", total);

		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		///////////////////////////////
		try {
			// get electric
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			String sql = "SELECT SUM(elco) AS total FROM electric_consumption;";
			Statement stnt = conn.createStatement();

			ResultSet rs = stnt.executeQuery(sql);

			double electrictotal = 0;
			// get data
			while (rs.next()) {
				electrictotal = rs.getDouble("total");
				System.out.println("electric total : " + rs.getDouble("total"));
			}
			modelAndView.addObject("electricTotal", electrictotal);

		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		///////////////////////////////
		try {
			// get transportation
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			String sql = "SELECT SUM(transportation_carbon) AS total FROM transportation;";
			Statement stnt = conn.createStatement();

			ResultSet rs = stnt.executeQuery(sql);

			double transTotal = 0;
			// get data
			while (rs.next()) {
				transTotal = rs.getDouble("total");
			}
			modelAndView.addObject("transTotal", transTotal);

		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		///////////////////////////////
		try {
			//get transportation
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			String sql = "SELECT SUM(reco) AS total FROM recycle_activity;";
			Statement stnt = conn.createStatement();

			ResultSet rs = stnt.executeQuery(sql);

			double recyTotal = 0;
			// get data
			while (rs.next()) {
				recyTotal = rs.getDouble("total");
			}
			modelAndView.addObject("recyTotal", recyTotal);

		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}

		return modelAndView;
	}

	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		// Invalidate the session (remove all attributes and end the session)
//        session.invalidate();

		// Redirect to the login page after logout
		return new ModelAndView("redirect:/");
	}
}
