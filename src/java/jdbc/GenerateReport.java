package jdbc;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class GenerateReport {
	private java.sql.Date date;
	private String activity;
	private DBConnection db = new DBConnection();
	private Connection newCon = null;
	//private ArrayList timetable = new ArrayList<>();
	private ResultSet result = null;
	
	public GenerateReport() {}
	
	public GenerateReport(java.sql.Date d, String activity) {
		this.date = d;
		this.activity = activity;
	}
	
	public String generateDay() throws ClassNotFoundException, SQLException {
		String dayInString = null;
		String query = null;
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			int day = date.getDay();
			
			switch (day) {
			case 0 : dayInString = "Sunday";
					 break;
					 
			case 1 : dayInString = "Monday";
			 		 break;
			 		 
			case 2 : dayInString = "Tuesday";
			 		 break;
			 
			case 3 : dayInString = "Wednesday";
			         break;
			 
			case 4 : dayInString = "Thursday";
			         break;
			 
			case 5 : dayInString = "Friday";
			         break;
			 
			case 6 : dayInString = "Saturday";
			         break;
			}
			
			Statement stmt = newCon.createStatement();
			if (activity.equalsIgnoreCase("Sport")) {
				query = "select * from sports_trainer_schedule where day = '" +dayInString+ "'";
			}
			else if (activity.equalsIgnoreCase("Gym")) {
				query = "select * from trainer_schedule where day = '" +dayInString+ "'";
			}
			
			ResultSet rs = stmt.executeQuery(query);
			
			if (rs.next()) 
				return dayInString;
			else
				return null;
		}
		else
			return null;
	}
	
	public ResultSet getTimeTable() throws ClassNotFoundException, SQLException, NoRecordFoundException {
		String day = generateDay();
		String query = null;
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement stmt = newCon.createStatement();
			
			if (activity.equalsIgnoreCase("Gym"))
				query = "SELECT s.Name, sp.workout_name, sc.start_time, sc.end_time FROM trainer s, trainer_schedule sts, workout sp, schedule sc where s.Trainer_ID = sts.trainer_ID AND sp.workout_ID = s.Specialization AND sts.schedule_ID = sc.schedule_ID AND sts.day = '" +day+ "'";
			else if (activity.equalsIgnoreCase("Sport"))
				query = "SELECT s.trainer_name, sp.sport_name, sc.start_time, sc.end_time FROM sports_trainer s, sports_trainer_schedule sts, sports sp, schedule sc where s.trainer_ID = sts.trainer_ID AND sp.sport_ID = s.sport AND sts.schedule_ID = sc.schedule_ID AND sts.day = '" +day+ "'";
			result = stmt.executeQuery(query);
			
			if (result != null)
				return result;
			else
				throw new NoRecordFoundException();
		}
		else
			return null;
	}
	
	public java.sql.Date getSearchDate() {
		return this.date;
	}
	
	public String getActivity() {
		return this.activity;
	}
}

