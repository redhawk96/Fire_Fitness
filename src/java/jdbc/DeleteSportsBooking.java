package jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;

public class DeleteSportsBooking extends AbstractDeleteBooking {
	/*private String member_ID,trainer_ID,schedule_ID;
	private Date date;
	private DBConnection db = new DBConnection();
	private Connection newCon = null;*/
	
	public DeleteSportsBooking(String mID, String tID, Date d, String sID) {
		this.member_ID = mID;
		this.trainer_ID = tID;
		this.date = d;
		this.schedule_ID = sID;
	}
	
	public boolean isDeleted() throws ClassNotFoundException, SQLException {
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement st = newCon.createStatement();
			
			String query = "delete from sports_trainer_booking where member_ID = '" +this.member_ID+ "' AND sports_trainer_ID = '" +this.trainer_ID+ "' AND Date = '" +this.date+ "' AND schedule_ID = '" +this.schedule_ID+ "'";
			
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
