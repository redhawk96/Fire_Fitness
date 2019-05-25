package jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;

public abstract class AbstractDeleteBooking {
	protected String member_ID,trainer_ID,schedule_ID;
	protected Date date;
	protected DBConnection db = new DBConnection();
	protected Connection newCon = null;
	
	public abstract boolean isDeleted() throws ClassNotFoundException, SQLException;
}
