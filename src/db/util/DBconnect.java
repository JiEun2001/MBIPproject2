package db.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.stereotype.Service;

import model.WaterUsage;

@Service
public class DBconnect {
	public static Connection openConnection() {
		Connection conn = null;
		
		String dbURL = "jdbc:mysql://localhost:3306/mbip";
		String username = "root";
		String password = "";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,username,password);
			
		} catch (SQLException ex) {
			ex.printStackTrace();
			
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void saveWaterUsage(WaterUsage waterUsage) {
        String sql = "INSERT INTO water (household, outdoor) VALUES (?, ?)";
        
        try (Connection conn = openConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setFloat(1, waterUsage.getHouseholdWaterUsage());
            stmt.setFloat(2, waterUsage.getOutdoorWaterUsage());

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exception - maybe log it or throw a custom exception
        }
    }
	
	
}
