package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Cardio extends Gym_Workout {
	private static Cardio cardio = new Cardio("W002","Cardio");

	private Cardio(String id, String name) {
		super(id,name);
	}
	
	public static Cardio getInstance() {
		if (cardio == null) {
			synchronized (Cardio.class) {
				if (cardio == null) {
					cardio = new Cardio("W002","Cardio");
				}
			}
		}
		return cardio;
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
