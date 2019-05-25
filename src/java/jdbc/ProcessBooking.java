package jdbc;
import java.sql.*;

public class ProcessBooking {
	private String member_ID;
	private String trainer_ID;
	private String workout_name,workout_ID;
	private Date date;
	private String time;
	private Connection newCon = null;
	private DBConnection db = new DBConnection();
	
	public ProcessBooking(String mID, String tID, String wname, Date date, String time) {
		this.member_ID = mID;
		this.trainer_ID = tID;
		this.workout_name = wname;
		this.date = date;
		this.time = time;
	}
	
	public String getWorkoutID() throws ClassNotFoundException, SQLException {
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement st = newCon.createStatement();
			String query = "select workout_ID from workout where workout_name = '" +workout_name+ "'";
			ResultSet rs = st.executeQuery(query);
			
			if (rs.next()) {
				workout_ID = rs.getString(1);
				return workout_ID;
			}
			else
				return null;
		}
		else
			return null;
		
	}
	
	public boolean isInserted() throws ClassNotFoundException, SQLException {
		workout_ID = getWorkoutID();
		String schedule_ID = null;
		String query = null;
		String query1 = null;
		
		String[] s = time.split("-");
		Time d1 = Time.valueOf(s[0]);
		Time d2 = Time.valueOf(s[1]);
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement stmt = newCon.createStatement();
			query = "select schedule_ID from schedule where start_time = '" +d1+ "' AND end_time = '" +d2+ "'";
			ResultSet rs = stmt.executeQuery(query);
			
			if (rs.next()) {
				schedule_ID = rs.getString(1);
			}
			
			query1 = "insert into Trainer_Booking values(?,?,?,?,?)";
			
			PreparedStatement stmt1 = newCon.prepareStatement(query1);
			stmt1.setString(1, member_ID);
			stmt1.setString(2, trainer_ID);
			stmt1.setString(3, workout_ID);
			stmt1.setDate(4, date);
			stmt1.setString(5, schedule_ID);
			int result = stmt1.executeUpdate();
			
			if (result > 0) 
				return true;
			else
				return false;
		}
		else
			return false;
		
	}
	
	public boolean isSportsInserted() throws ClassNotFoundException, SQLException {
		//workout_ID = getWorkoutID();
		String schedule_ID = null;
		String query = null;
		String query1 = null;
		
		String[] s = time.split("-");
		Time d1 = Time.valueOf(s[0]);
		Time d2 = Time.valueOf(s[1]);
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement stmt = newCon.createStatement();
			query = "select schedule_ID from schedule where start_time = '" +d1+ "' AND end_time = '" +d2+ "'";
			ResultSet rs = stmt.executeQuery(query);
			
			if (rs.next()) {
				schedule_ID = rs.getString(1);
			}
			
			query1 = "insert into sports_trainer_booking values(?,?,?,?)";
			
			PreparedStatement stmt1 = newCon.prepareStatement(query1);
			stmt1.setString(1, member_ID);
			stmt1.setString(2, trainer_ID);
			stmt1.setDate(3, date);
			stmt1.setString(4, schedule_ID);
			int result = stmt1.executeUpdate();
			
			if (result > 0) 
				return true;
			else
				return false;
		}
		else
			return false;
		
	}
	
}
