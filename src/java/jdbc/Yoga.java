package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Yoga extends Gym_Workout {
	private static Yoga yoga = new Yoga("W001","Yoga");

	private Yoga(String id, String name) {
		super(id,name);
	}
	
	public static Yoga getInstance() {
		if (yoga == null) {
			synchronized (Yoga.class) {
				if (yoga == null) {
					yoga = new Yoga("W001","Yoga");
				}
			}
		}
		return yoga;
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
