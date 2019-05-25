package jdbc;

import java.sql.*;

public class ProcessTrainer {
	private static String athlete;
	private static String trainer_name;
	private static String trainer_id;
	private static String final_trainer_id;
	private static DBConnection db = new DBConnection();
	private static Connection newCon = null;
	
	public ProcessTrainer(String name, String athletic) {
		trainer_name = name;
		athlete = athletic;
	}
	
	public ProcessTrainer(String name) {
		trainer_name = name;
	}
	
	public static String getTrainerID() throws ClassNotFoundException, SQLException {
		if (athlete.equalsIgnoreCase("Sports"))
			final_trainer_id = getGymTrainerID();
		else if (athlete.equalsIgnoreCase("Gym"))
			final_trainer_id = getSportsTrainerID();
		
		return final_trainer_id;
	}
	
	public static String getGymTrainerID() throws ClassNotFoundException, SQLException {
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement st = newCon.createStatement();
			String query = "select * from trainer where Name = '" +trainer_name+ "'";
			
			ResultSet rs = st.executeQuery(query);
			
			if (rs.next())
				trainer_id = rs.getString("Trainer_ID");
			
			return trainer_id;
			
		}
		else
			return "Error";
	}
	
	public static String getSportsTrainerID() throws ClassNotFoundException, SQLException {
		
		if (db.isConnected()) {
			newCon = DBConnection.getCon();
			Statement st = newCon.createStatement();
			String query = "select * from sports_trainer where trainer_name = '" +trainer_name+ "'";
			
			ResultSet rs = st.executeQuery(query);
			
			if (rs.next())
				trainer_id = rs.getString("trainer_ID");
			
			return trainer_id;
			
		}
		else
			return "Error";
	}
}
