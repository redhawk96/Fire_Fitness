package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;

public class Discount{
    
    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";
    
    @SuppressWarnings("unused")
	public Integer getDiscountPerentage(String userId) throws ClassNotFoundException, SQLException {
        
        double totalAmount;
        int discountAmount = 0;

        if (checkConnection.getConnectionStatus() == true) {

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();
            
            sql = "SELECT SUM(total_payment) FROM (SELECT `total_payment` FROM `invoice` WHERE `member_ID` LIKE '"+userId+"' ORDER BY `invoice_ID` DESC LIMIT 2)t1";
//            
	            ResultSet rs = st.executeQuery(sql);
	            Double calcAmount = 0.0;
	            while (rs.next()) {
	            	calcAmount = rs.getDouble(1);
	            }
//            
//            discountAmount = 0; 
//            String calcAmount = "21212";
            
            if(calcAmount == null){
            	discountAmount = 0;
                
            }else {
                totalAmount = calcAmount;
                
                if(totalAmount<15000){
                    discountAmount = 0;
                }
                
                if(totalAmount>15000 && totalAmount<=35000){
                    discountAmount = 5;
                }
                
                if(totalAmount>35000){
                    discountAmount = 10;
                   }
                }
            }
        return discountAmount;
        }
   
    public double getDiscountAmount(Double totalAmount, Integer discountPercentage){
        
        Double totalDiscount = 0.0;
        
        if(discountPercentage == 0){
            return totalDiscount = 0.0;
        }
        
        return totalDiscount = (totalAmount/100) * discountPercentage;
    }   
}
