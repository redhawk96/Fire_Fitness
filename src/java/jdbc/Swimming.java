package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Swimming extends Sports {
	private static Swimming swimming = new Swimming("S004","Swimming");

	private Swimming(String id, String name) {
		super(id,name);
	}
	
	public static Swimming getInstance() {
		if (swimming == null) {
			synchronized (Swimming.class) {
				if (swimming == null) {
					swimming = new Swimming("S004","Swimming");
				}
			}
		}
		return swimming;
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
