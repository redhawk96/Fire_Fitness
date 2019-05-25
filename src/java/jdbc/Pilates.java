package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Pilates extends Gym_Workout {
	private static Pilates pilates = new Pilates("W003","Pilates");

	private Pilates(String id, String name) {
		super(id,name);
	}
	
	public static Pilates getInstance() {
		if (pilates == null) {
			synchronized (Pilates.class) {
				if (pilates == null) {
					pilates = new Pilates("W003","Pilates");
				}
			}
		}
		return pilates;
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
