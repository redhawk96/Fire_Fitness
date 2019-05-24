package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

public class WeightsBooking extends Booking{
    
    private String memberId;
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";
    
    //Default constructor
    public WeightsBooking(String memberId){
        super(memberId);
        this.memberId = memberId;
    }
    
    public Integer getBookingCount() throws ClassNotFoundException, SQLException {
        
        Integer weightsBookings = 0;
        
        if (checkConnection.getConnectionStatus() == true) {

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

                sql = "SELECT COUNT(*) FROM trainer_booking WHERE member_ID LIKE '"+memberId+"' AND workout_ID LIKE 'W004'";

                ResultSet rs = st.executeQuery(sql);
                String weightsBookinCount = "";
                while (rs.next()) {
                    weightsBookinCount = rs.getString(1);
                }
                return weightsBookings = Integer.parseInt(weightsBookinCount);
            }
        return 404;
    }
}
