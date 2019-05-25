package jdbc;
import java.sql.Date;
import java.util.*;

public abstract class Physical_Activity {
	protected String id, name;
	protected static int noOfTrainers;
	protected ArrayList<Date> availableDates;
	protected ArrayList<Trainer> listOfTrainers;
	
	public Physical_Activity(String id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public String getID() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public abstract ArrayList<Date> getAvailableDates();
	public abstract ArrayList<Trainer> addTrainer();
	public static int getNoOfTrainers() {
		return noOfTrainers;
	}
}
