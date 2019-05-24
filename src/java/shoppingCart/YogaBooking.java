package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

//Inherits from booking class
public class YogaBooking extends Booking{
    
    private String memberId;
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";
    
    //Default constructor
    public YogaBooking(String memberId){
        super(memberId);
        this.memberId = memberId;
    }
    
    //Overriding getBookingCount abstract class
    public Integer getBookingCount() throws ClassNotFoundException, SQLException {

        Integer yogaBookings;
        //Checking the server connection returnValue by using getConnectionStatus() method
        if (checkConnection.getConnectionStatus() == true) {
            
            //Getting server connection parameters to initialize connection
            newCon = checkConnection.getConnection();
            //Creating a new Statement by initialized connection
            Statement st = newCon.createStatement();

                sql = "SELECT COUNT(*) FROM trainer_booking WHERE member_ID LIKE '"+memberId+"' AND workout_ID LIKE 'W001'";

                ResultSet rs = st.executeQuery(sql);
                String yogaBookingCount = "";
                while (rs.next()) {
                    yogaBookingCount = rs.getString(1);
                }
                return yogaBookings = Integer.parseInt(yogaBookingCount);
        }
        return 404;
    }
    
}
