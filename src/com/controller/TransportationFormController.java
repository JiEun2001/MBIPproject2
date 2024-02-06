package com.controller;

import model.Transportation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/transportationForm")
public class TransportationFormController {

	@GetMapping("/")
	public ModelAndView showTransportationConsumptionForm() {
		ModelAndView modelAndView = new ModelAndView("/transportationForm");
		return modelAndView;
	}	

    @PostMapping("/submit-consumption")
    public ModelAndView submitConsumption(
            @RequestParam("date") String date,
            @RequestParam("fuelConsumed") double fuelConsumed,
            @RequestParam("distanceTravelled") double distanceTravelled,
            @RequestParam("vehicleType") String vehicleType,
            @RequestParam("emissionFactor") double emissionFactor,
            @RequestParam("comment") String comment,
            HttpSession session) {

        ModelAndView modelAndView = new ModelAndView();

        String dbURL = "jdbc:mysql://localhost:3306/mbip";
        String dbUsername = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
            int Uid = (int) session.getAttribute("uid");

            // Create an instance of the Transportation model
            Transportation transportation = new Transportation(fuelConsumed, distanceTravelled, emissionFactor);

            // Calculate transportation carbon
            double transportationCarbon = transportation.calculateTransportationCarbon();

            String sql = "INSERT INTO transportation (Uid, date, fuel_consumed, distance_travelled, " +
                    "vehicle_type, emission_factor, transportation_carbon, comment) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setInt(1, Uid);
            statement.setString(2, date);
            statement.setDouble(3, fuelConsumed);
            statement.setDouble(4, distanceTravelled);
            statement.setString(5, vehicleType);
            statement.setDouble(6, emissionFactor);
            statement.setDouble(7, transportationCarbon);
            statement.setString(8, comment);
            

            statement.executeUpdate();

            modelAndView = new ModelAndView("redirect:/user/");

            conn.close();

        } catch (SQLException ex) {
            modelAndView.setViewName("/transportationForm");
            modelAndView.addObject("error", "Please try again.");
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            modelAndView.setViewName("/transportationForm");
            modelAndView.addObject("error", "Please try again.");
            ex.printStackTrace();
        }

        return modelAndView;
    }
}
