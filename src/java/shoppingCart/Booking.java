package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

abstract class Booking {
    
    protected String memberId;
    ServerConnection checkConnection;
    
    public Booking(String memberId){
        
        this.memberId = memberId;
    }
    
    public abstract Integer getBookingCount()throws ClassNotFoundException, SQLException;
    
}




