package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Badminton extends Sports{
	private static Badminton badminton = new Badminton("S001","Badminton");

	private Badminton(String id, String name) {
		super(id,name);
	}
	
	public static Badminton getInstance() {
		if (badminton == null) {
			synchronized (Badminton.class) {
				if (badminton == null) {
					badminton = new Badminton("S001","Badminton");
				}
			}
		}
		return badminton;
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
