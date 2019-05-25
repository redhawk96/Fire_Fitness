package jdbc;
import java.sql.*;

public class DeleteBooking extends AbstractDeleteBooking {
	/*private String member_ID,trainer_ID,schedule_ID;
	private Date date;
	private DBConnection db = new DBConnection();
	private Connection newCon = null;*/
	
	public DeleteBooking(String mID, String tID, Date d, String sID) {
		this.member_ID = mID;
		this.trainer_ID = tID;
		this.date = d;
		this.schedule_ID = sID;
	}
	
	public boolean isDeleted() throws ClassNotFoundException, SQLException {
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement st = newCon.createStatement();
			
			String query = "delete from trainer_booking where member_ID = '" +this.member_ID+ "' AND trainer_ID = '" +this.trainer_ID+ "' AND Date = '" +this.date+ "' AND schedule_ID = '" +this.schedule_ID+ "'";
			
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
