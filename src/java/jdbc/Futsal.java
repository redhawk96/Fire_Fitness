package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Futsal extends Sports {
	private static Futsal futsal = new Futsal("S003","Futsal");

	private Futsal(String id, String name) {
		super(id,name);
	}
	
	public static Futsal getInstance() {
		if (futsal == null) {
			synchronized (Futsal.class) {
				if (futsal == null) {
					futsal = new Futsal("S003","Fustal");
				}
			}
		}
		return futsal;
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
