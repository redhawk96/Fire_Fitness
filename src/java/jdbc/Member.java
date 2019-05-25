package jdbc;
import java.sql.*;

public class Member {
	private String memberID = null;
	private String username;
	private String password;
	private String member_Type;
	private String email;
	private String Gender;
	private int age;
	private Connection newCon = null;
	private DBConnection db = new DBConnection();
	
	public Member() {}
	
	public Member(String user, String pass, String type, String email, String gender, int age) {
		this.username = user;
		this.password = pass;
		this.member_Type = type;
		this.email = email;
		this.Gender = gender;
		this.age = age;
	}
	
	public String generateID() throws ClassNotFoundException, SQLException {
		String ID = null;
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement stmt = newCon.createStatement();
			
			String query = "select ID from member order by ID desc limit 1";
			ResultSet rs = stmt.executeQuery(query);
			
			if (rs.next()) {
				String initialID = rs.getString("ID");
				String[] s = initialID.split("M0", 2);
				String string = s[0];
				int id = Integer.parseInt(s[1]);
				id++;
				
				ID = "M0" + id;
			}
		}
		return ID;
	}
	
	public boolean isInserted() throws ClassNotFoundException, SQLException {
		memberID = generateID();
		
		String query = "insert into member values(?,?,?,?,?,?,?)";
		PreparedStatement pst = newCon.prepareStatement(query);
		pst.setString(1, memberID);
		pst.setString(2, username);
		pst.setString(3, password);
		pst.setString(4, member_Type);
		pst.setString(5, Gender);
		pst.setInt(6, age);
		pst.setString(7, email);
		
		int result = pst.executeUpdate();
		
		if (result > 0)
			return true;
		else
			return false;
		
	}
	
	public String getMemberID() {
		return this.memberID;
	}
	
}
