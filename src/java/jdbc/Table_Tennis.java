package jdbc;

import java.sql.Date;
import java.util.ArrayList;

public class Table_Tennis extends Sports{
	private static Table_Tennis table = new Table_Tennis("S002","Table Tennis");

	private Table_Tennis(String id, String name) {
		super(id,name);
	}
	
	public static Table_Tennis getInstance() {
		if (table == null) {
			synchronized (Table_Tennis.class) {
				if (table == null) {
					table = new Table_Tennis("S002","Table_Tennis");
				}
			}
		}
		return table;
	}
	
	public ArrayList<Trainer> addTrainer() {
		return listOfTrainers;
	}
	
	public ArrayList<Date> getAvailableDates() {
		return availableDates;
	}
}
