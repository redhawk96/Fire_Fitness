package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

public class PilateBooking extends Booking{
    
    private String memberId;
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";
    
    //Default constructor
    public PilateBooking(String memberId){
        super(memberId);
        this.memberId = memberId;
    }
    
    public Integer getBookingCount()throws ClassNotFoundException, SQLException {
        
        Integer pilatesBookings = 0;
        
        if (checkConnection.getConnectionStatus() == true){

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

                sql = "SELECT COUNT(*) FROM trainer_booking WHERE member_ID LIKE '"+memberId+"' AND workout_ID LIKE 'W003'";

                ResultSet rs = st.executeQuery(sql);
                String pilatesBookingCount = "";
                while (rs.next()) {
                    pilatesBookingCount = rs.getString(1);
                }
                return pilatesBookings = Integer.parseInt(pilatesBookingCount);
            } 

        return 404;
    }
    
}
