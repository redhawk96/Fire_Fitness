package jdbc;
import java.sql.*;
import javax.servlet.*;
import java.util.Date;

public class ProcessTimeAndDate {
	private Date date;
	private String time, trainer_ID;
	private Connection newCon = null;
	private DBConnection db = new DBConnection();
	
	public ProcessTimeAndDate(Date d, String time, String trainer_ID) {
		this.date = d;
		this.time = time;
		this.trainer_ID = trainer_ID;
	}
	
	public ProcessTimeAndDate(Date d, String time) {
		this.date = d;
		this.time = time;
	}
	
	public boolean checkAvailability() throws ClassNotFoundException, SQLException {
		String dayInString = null;
		@SuppressWarnings("deprecation")
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
		
		
		if (db.isConnected() && date.after(new Date())) {
			newCon = DBConnection.getCon();
			Statement st1 = newCon.createStatement();
			Statement st2 = newCon.createStatement();
			String query1 = "select day from trainer_schedule where trainer_ID = '" +trainer_ID+ "' AND day = '" +dayInString+ "'";
			String query2 = "select day from sports_trainer_schedule where trainer_ID = '" +trainer_ID+ "' AND day = '" +dayInString+ "'";
			ResultSet res = st1.executeQuery(query1);
			ResultSet res2 = st2.executeQuery(query2);
			
			if (res.next() || res2.next()) {
				return true;
			}
			else
				return false;
		}
		return false;
	}
	
	
}
