package pack;

import java.sql.*;

public class AdminLogin {
	private DBConnect db = new DBConnect();
	private Connection newCon = null;
	private String adminName = null;
	private String password = null;
	private Statement st = null;
	private ResultSet rs = null;
	
	public AdminLogin(String admin,String password) {
		this.adminName = admin;
		this.password = password;
	}
	public boolean isLoggedIn() throws ClassNotFoundException,SQLException{
		
		//db = new DBConnect();
		
		if(db.isConnected()) {
			newCon = DBConnect.getCon();
			String query = "select * from admin where admin_name='"+adminName+ "' And password ='"+password+"'";
			
			st = newCon.createStatement();
			rs = st.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			else {
				return false;
			}
		}
		else
			return false;

	}	
}

