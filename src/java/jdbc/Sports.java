package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Sports extends Physical_Activity{
	
	public Sports(String id, String name) {
		super(id,name);
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
