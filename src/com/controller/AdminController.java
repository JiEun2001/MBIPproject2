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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Electric;
import model.Transportation;
import model.recycle;
import model.WaterUsage;
import model.user;

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
			// get Recycle
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
		///////////////////////////////
		try {
			//get Water
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			String sql = "SELECT SUM(CF) AS total FROM water;";
			Statement stnt = conn.createStatement();

			ResultSet rs = stnt.executeQuery(sql);

			double waterTotal = 0;
			// get data
			while (rs.next()) {
				waterTotal = rs.getDouble("total");
			}
			modelAndView.addObject("waterTotal", waterTotal);

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

	@GetMapping("/userAll")
	public ModelAndView getAll() {
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbusername = "root";
		String dbpassword = "";
		List<user> users = new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			// creating JDBC Statement
			String sql = "Select * from user";
			Statement stnt = conn.createStatement();

			// Execute query
			ResultSet rs = stnt.executeQuery(sql);

			// Get data
			while (rs.next()) {

				user user = new user();
				user.setUid(rs.getString("uid"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setUsername(rs.getString("username"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));

				users.add(user);

			}

			// close
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}

		ModelAndView modelAndView = new ModelAndView("/adminUserManage");
		modelAndView.addObject("users", users);
		return modelAndView;
	}

	@GetMapping("/electric")
	public ModelAndView electric() {
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbusername = "root";
		String dbpassword = "";
		List<Electric> electrics = new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			// creating JDBC Statement
			String sql = "Select * from electric_consumption";
			Statement stnt = conn.createStatement();

			// Execute query
			ResultSet rs = stnt.executeQuery(sql);

			// Get data
			while (rs.next()) {

				Electric electric = new Electric();
				electric.setFid(rs.getInt("fid"));
				electric.setUid(rs.getInt("uid"));
				electric.setDate(rs.getString("date"));
				electric.setMeterReading(rs.getInt("meter_reading"));
				electric.setCommants(rs.getString("comments"));
				electric.setElco(rs.getDouble("elco"));

				electrics.add(electric);

				// Print each row from ResultSet (for debugging)
				System.out.println("Row Data: " + electric);

			}

			// close
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}

		ModelAndView modelAndView = new ModelAndView("/adminElectric");
		modelAndView.addObject("electrics", electrics);
		return modelAndView;
	}
	
	@GetMapping("/water")
	public ModelAndView water() {
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbusername = "root";
		String dbpassword = "";
		List<WaterUsage> waters = new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			// creating JDBC Statement
			String sql = "Select * from water";
			Statement stnt = conn.createStatement();

			// Execute query
			ResultSet rs = stnt.executeQuery(sql);

			// Get data
			while (rs.next()) {

				WaterUsage water = new WaterUsage();
				water.setUid(rs.getString("uid"));
				water.setHouseholdWaterUsage(rs.getFloat("household"));
				water.setOutdoorWaterUsage(rs.getFloat("outdoor"));
				water.setCF(rs.getDouble("CF"));

				waters.add(water);

				// Print each row from ResultSet (for debugging)
				System.out.println("Row Data: " + water);

			}

			// close
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}

		ModelAndView modelAndView = new ModelAndView("/adminWater");
		modelAndView.addObject("waters", waters);
		return modelAndView;
	}
	
	@GetMapping("/recycle")
	public ModelAndView recycle() {
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbusername = "root";
		String dbpassword = "";
		List<recycle> recycles= new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			// creating JDBC Statement
			String sql = "Select * from recycle_activity";
			Statement stnt = conn.createStatement();

			// Execute query
			ResultSet rs = stnt.executeQuery(sql);

			// Get data
			while (rs.next()) {

				recycle recycle = new recycle();
				recycle.setReid(rs.getInt("reid"));
				recycle.setUid(rs.getInt("uid"));
				recycle.setReItem(rs.getString("reItem"));
				recycle.setReTotalItem(rs.getInt("reTotalItem"));
				recycle.setReWeight(rs.getDouble("reWeight"));
				recycle.setReco(rs.getDouble("reco"));

				recycles.add(recycle);

				// Print each row from ResultSet (for debugging)
				System.out.println("Row Data: " + recycle);

			}

			// close
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}

		ModelAndView modelAndView = new ModelAndView("/adminRecycle");
		modelAndView.addObject("recycles", recycles);
		return modelAndView;
	}
	
	
	@GetMapping("/transport")
	public ModelAndView transport() {
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String dbusername = "root";
		String dbpassword = "";
		List<Transportation> transports= new ArrayList<>();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbusername, dbpassword);
			System.out.println("connection successfully opened :" + conn.getMetaData());

			// creating JDBC Statement
			String sql = "Select * from transportation";
			Statement stnt = conn.createStatement();

			// Execute query
			ResultSet rs = stnt.executeQuery(sql);

			// Get data
			while (rs.next()) {

				Transportation transport = new Transportation(0, 0, 0);
				
				transport.setUid(rs.getInt("uid"));
				transport.setVehicle_type(rs.getString("vehicle_type"));
				transport.setTransportation_carbon(rs.getDouble("transportation_carbon"));
				transport.setComment(rs.getString("comment"));
				transport.setFuelConsumed(rs.getDouble("fuel_consumed"));
				transport.setDistanceTravelled(rs.getDouble("distance_travelled"));
				transport.setEmissionFactor(rs.getDouble("emission_factor"));

				transports.add(transport);

				// Print each row from ResultSet (for debugging)
				System.out.println("Row Data: " + transports);

			}

			// close
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}

		ModelAndView modelAndView = new ModelAndView("/adminTransport");
		modelAndView.addObject("transports", transports);
		return modelAndView;
	}
}
