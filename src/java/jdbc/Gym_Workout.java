package jdbc;
import java.sql.Date;
import java.util.*;

public class Gym_Workout extends Physical_Activity {
	
	public Gym_Workout(String id, String name) {
		super(id,name);
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
