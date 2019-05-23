package pack;
import java.sql.*;

public class DeleteAndUpdate {
	private String member_id;
	private String member_name,member_type;
	private DBConnect db = new DBConnect();
	private Connection newCon = null;
	
	public DeleteAndUpdate(String id, String name, String type) {
		this.member_id = id;
		this.member_name = name;
		this.member_type = type;
	}
	
	public boolean isUpdated() throws ClassNotFoundException, SQLException {
		
		if (db.isConnected()) {
			newCon = DBConnect.getCon();
			
			Statement st = newCon.createStatement();
			
			String query="update member set fName= '"+member_name+ "',member_type = '"+member_type+"' where ID = '"+member_id+ "'";
			int result = st.executeUpdate(query);

			if (result > 0)
				return true;
			else
				return false;
		}
		else
			return false;
	}
	public boolean isDeleted() throws ClassNotFoundException, SQLException
	{
		if(db.isConnected()) {
			newCon = DBConnect.getCon();
			
			Statement st = newCon.createStatement();
			 String query="delete from member where ID = '" + member_id + "'";
					 int result = st.executeUpdate(query);

				if (result > 0)
					return true;
				else
					return false;
			}
			else
				return false;
	
		
	}
}
