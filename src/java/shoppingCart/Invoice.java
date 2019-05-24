package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

public class Invoice {
    
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";
    
    
        //Declaring a method to get a new inovice ID for the currently logged in member
    public Integer getInvoiceId() throws ClassNotFoundException, SQLException {
        
        Integer newInvoiceId = 0;
        
        if (checkConnection.getConnectionStatus() == true) {

             newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

            sql = "SELECT invoice_ID FROM invoice ORDER BY invoice_ID DESC LIMIT 1";

            ResultSet rs = st.executeQuery(sql);
            String invoiceId = "";
            while (rs.next()) {
                invoiceId = rs.getString(1);
            }
            
            //If there are no records in the invoice table
            if(invoiceId == ""){
                //First invoice id will be set to 1000
                newInvoiceId = 1000;
            }else
                
            //Converting last invoice id to an integer and adding one
            newInvoiceId = (Integer.parseInt(invoiceId)+1);
        }
        return newInvoiceId;
    }
    
}
