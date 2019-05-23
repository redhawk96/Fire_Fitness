package pack;
import java.sql.*;

public class DBConnect {
	private String url = "jdbc:mysql://localhost:3306/project1";
	private String username = "root";
	private String password = "";
	static Connection con = null;
	
	public boolean isConnected() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, username, password);
		
		if (con != null)
			return true;
		else
			return false;
	}
	
	public static Connection getCon() {
		return con;
	}
}
