package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

public class CardioBooking extends Booking{
    
    private String memberId;
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";
    
    //Default constructor
    public CardioBooking(String memberId){
        super(memberId);
        this.memberId = memberId;
    }
    
    public Integer getBookingCount() throws ClassNotFoundException, SQLException {

        Integer cardioBookings = 0;
        
        if (checkConnection.getConnectionStatus() == true) {

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

                sql = "SELECT COUNT(*) FROM trainer_booking WHERE member_ID LIKE '"+memberId+"' AND workout_ID LIKE 'W002'";

                ResultSet rs = st.executeQuery(sql);
                String cardioBookingCount = "";
                while (rs.next()) {
                    cardioBookingCount = rs.getString(1);
                }
                return cardioBookings = Integer.parseInt(cardioBookingCount);
        }
        return 404;
    }
}
