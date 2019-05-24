package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

public class GymPayment {
    
     //ServerConnection is a Singleton
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";
    
    
    public Integer getYogaBookings(String userId) throws ClassNotFoundException, SQLException {

        Integer yogaBookings = 0;
        //Checking the server connection returnValue by using getConnectionStatus() method
        if (checkConnection.getConnectionStatus() == true) {
            
            //Getting server connection parameters to initialize connection
            newCon = checkConnection.getConnection();
            //Creating a new Statement by initialized connection
            Statement st = newCon.createStatement();

                sql = "SELECT COUNT(*) FROM trainer_booking WHERE member_ID LIKE '"+userId+"' AND workout_ID LIKE 'W001'";

                ResultSet rs = st.executeQuery(sql);
                String yogaBookingCount = "";
                while (rs.next()) {
                    yogaBookingCount = rs.getString(1);
                }
                return yogaBookings = Integer.parseInt(yogaBookingCount);
        }
        return 404;
    }
    
    
    public Integer getCardioBookings(String userId) throws ClassNotFoundException, SQLException {

        Integer cardioBookings = 0;
        
        if (checkConnection.getConnectionStatus() == true) {

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

                sql = "SELECT COUNT(*) FROM trainer_booking WHERE member_ID LIKE '"+userId+"' AND workout_ID LIKE 'W002'";

                ResultSet rs = st.executeQuery(sql);
                String cardioBookingCount = "";
                while (rs.next()) {
                    cardioBookingCount = rs.getString(1);
                }
                return cardioBookings = Integer.parseInt(cardioBookingCount);
        }
        return 404;
    }
    
    
    public Integer getPilatesBookings(String userId)throws ClassNotFoundException, SQLException {
        
        Integer pilatesBookings = 0;
        
        if (checkConnection.getConnectionStatus() == true){

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

                sql = "SELECT COUNT(*) FROM trainer_booking WHERE member_ID LIKE '"+userId+"' AND workout_ID LIKE 'W003'";

                ResultSet rs = st.executeQuery(sql);
                String pilatesBookingCount = "";
                while (rs.next()) {
                    pilatesBookingCount = rs.getString(1);
                }
                return pilatesBookings = Integer.parseInt(pilatesBookingCount);
            } 

        return 404;
    }
    
    
    public Integer getWeightsBookings(String userId) throws ClassNotFoundException, SQLException {
        
        Integer weightsBookins = 0;
        
        if (checkConnection.getConnectionStatus() == true) {

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

                sql = "SELECT COUNT(*) FROM trainer_booking WHERE member_ID LIKE '"+userId+"' AND workout_ID LIKE 'W004'";

                ResultSet rs = st.executeQuery(sql);
                String weightsBookinCount = "";
                while (rs.next()) {
                    weightsBookinCount = rs.getString(1);
                }
                return weightsBookins = Integer.parseInt(weightsBookinCount);
            }
        return 404;
    }
    
//End of GymPayment class    
}
