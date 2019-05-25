package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Weights extends Gym_Workout {
	private static Weights weights = new Weights("W004","Weights");

	private Weights(String id, String name) {
		super(id,name);
	}
	
	public static Weights getInstance() {
		if (weights == null) {
			synchronized (Weights.class) {
				if (weights == null) {
					weights = new Weights("W004","Weights");
				}
			}
		}
		return weights;
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
