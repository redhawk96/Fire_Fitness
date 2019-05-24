package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

public class TableTennisBooking extends Booking {

    private String memberId;
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";

    //Default constructor
    public TableTennisBooking(String memberId) {
        super(memberId);
        this.memberId = memberId;
    }

    public Integer getBookingCount() throws ClassNotFoundException, SQLException {

        Integer TableTennisBookings = 0;
        //Checking the server connection returnValue by using getConnectionStatus() method
        if (checkConnection.getConnectionStatus() == true) {

            //Getting server connection parameters to initialize connection
            newCon = checkConnection.getConnection();
            //Creating a new Statement by initialized connection
            Statement st = newCon.createStatement();
            
            sql = "SELECT COUNT(*) FROM `sports_trainer_booking` WHERE (`member_ID` LIKE '"+memberId+"' AND `sports_trainer_ID` LIKE 'ST002') OR (`member_ID` LIKE '"+memberId+"' AND `sports_trainer_ID` LIKE 'ST006')";

            ResultSet rs = st.executeQuery(sql);
            String TableTennisBookingCount = "";
            while (rs.next()) {
                TableTennisBookingCount = rs.getString(1);
            }
            return TableTennisBookings = Integer.parseInt(TableTennisBookingCount);
        }

        return 404;
    }

}
