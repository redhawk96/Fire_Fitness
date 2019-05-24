package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

//MemberDetails class defined to get all the detials of the currently logged in member
public class Member {

    //ServerConnection is a Singleton
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";

    
    //Declaring a method to get the currently logged in member's first name
    public String getFirstName(String userId) throws ClassNotFoundException, SQLException {
        
        //Checking the server connection status by using getConnectionStatus() method
        if (checkConnection.getConnectionStatus() == true) {
            
            //Getting server connection parameters to initialize connection
            newCon = checkConnection.getConnection();
            //Creating a new Statement by initialized connection
            Statement st = newCon.createStatement();
            
            //First name is found by parameter passed in -> 'userId'
            sql = "SELECT fname FROM member WHERE ID LIKE '"+userId+"'";

            ResultSet rs = st.executeQuery(sql);
            String firstName = "";
            while (rs.next()) {
                firstName = rs.getString(1);
            }
            returnValue = firstName;
        }
        //If server connection status is false, default value will be returned
        return returnValue;
    }
    
    //Declaring a method to get the currently logged in member's member type
    public String getMembershipType(String userId) throws ClassNotFoundException, SQLException {

        if (checkConnection.getConnectionStatus() == true) {

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();
            
            sql = "SELECT `member_type` FROM `member` WHERE `ID` LIKE '"+userId+"'";

            ResultSet rs = st.executeQuery(sql);
            String memberType = "";
            while (rs.next()) {
                memberType = rs.getString(1);
            }
            returnValue = memberType;
        }
        return returnValue;
    }
    
//End of MemberDetails class  
} 
