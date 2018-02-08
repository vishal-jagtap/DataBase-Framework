package Test1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;


public class DB_Con {
	// Connection object
	static Connection conn = null;
	// Statement object
	static Statement stmt;
	// Result Set
	static ResultSet results = null;
	// Constant for Database URL
	public static String DB_URL = "jdbc:mysql://localhost:3306/movie_data"; // ORacle "jdbc:oracle:thin:@localhost:1521/sid"

	// Constant for Database Username
	public static String DB_USER = "root";
	// Constant for Database Password
	public static String DB_PASSWORD ="root";
	// Driver
	public static String driver = "com.mysql.jdbc.Driver"; // "oracle.jdbc.driver.OracleDriver"
	
	
	
	public void beforeClass() {
			
		// Properties for creating connection to database
		Properties props = new Properties();
		props.setProperty("user", "root");
		props.setProperty("password", "root");
	    
		try {
			// STEP 1: Register JDBC driver
			Class.forName(driver).newInstance();
			
			// STEP 2: Get connection to DB
			System.out.println("Connecting to a selected database...");
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			// conn = DriverManager.getConnection(DB_URL, props);		
			System.out.println("Connected database successfully...");
			
			// STEP 3: Statement object to send the SQL statement to the Database
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

	
	
}