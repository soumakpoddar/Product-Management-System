package dbutil;

import java.sql.*;

public class DBUtil {
	
	static String jdbcURL="jdbc:mysql://localhost/ums";
	static String jdbcUsername="root";
	static String jdbcPassword="soumak";

	public static Connection getConnection()
	{
		Connection conn = null;
		try 
		{
			
			Class.forName("com.mysql.jdbc.Driver");
		    conn = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
	
	
	public static void closeConnection(Connection conn)
	{
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
