package com.Ecom.connection;
import  java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection getCon() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","admin");
			return con;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public static boolean TableExists(Connection con, String tableName) throws SQLException {
	    DatabaseMetaData dbmd = con.getMetaData();
	    try (ResultSet rs = dbmd.getTables(null, null, tableName, null)) {
	        while (rs.next()) {
	            String tName = rs.getString("TABLE_NAME");
	            if (tName != null && tName.equals(tableName)) {
	                return true; 
	            }
	        }
	    }
	    return false; 
	}
	
}
