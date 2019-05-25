package jdbc;
import java.sql.*;

public class TimeTable {
	private String activityName;
	private String trainer_name;
	private Date start_time, end_time;
	
	public TimeTable(String a_name, String t_name, Date st_time, Date e_time) {
		this.activityName = a_name;
		this.trainer_name = t_name;
		this.start_time = st_time;
		this.end_time = e_time;
	}
	
	
}
