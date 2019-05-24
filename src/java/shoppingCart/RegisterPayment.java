package shoppingCart;

import Connection.ServerConnection;
import java.sql.*;
import java.time.*;

public class RegisterPayment {

    ServerConnection checkConnection;
    private Connection newCon = null;
    private String returnValue = "Database Not Connected";
    private String sql = "";

    public String getConfirmationTimeStamp(String userId) throws ClassNotFoundException, SQLException {

        String timestamp = "";
        String sql = "";
        String sqlmonth = "";

        if (checkConnection.getConnectionStatus() == true) {

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

            sql = "SELECT `confirmed_date` FROM `invoice` WHERE `member_ID` LIKE '" +userId+ "' ORDER BY `invoice_ID` DESC LIMIT 1";
            ResultSet rs = st.executeQuery(sql);
            String Countrow = "";
            while (rs.next()) {
                Countrow = rs.getString(1);
            }

            timestamp = Countrow;
            
            if(timestamp != ""){
                
                sql = "SELECT EXTRACT(MONTH FROM '"+timestamp+"')";
                ResultSet rs1 = st.executeQuery(sql);
                String Countrow1 = "";
                while (rs1.next()) {
                    Countrow1 = rs1.getString(1);
                }
                sqlmonth = Countrow1;
                int sqlmonth1 = Integer.parseInt(sqlmonth);

                
                java.util.Date date = new java.util.Date();
                LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                int month = localDate.getMonthValue();
                
                if(sqlmonth1 == month){
                    
                	returnValue = sqlmonth; 
                    
                }else returnValue = "0";
    
            }
            else returnValue = "0";
    }
        return returnValue;
}



    public boolean registerMonthlyPayment(String userId, int invoiceid, Double gymTotal, Double sportsTotal, Double membershipFee, Double totalPayment) throws ClassNotFoundException, SQLException {

//        String memberId, String invoiceId, double yogatotal
        String status = "";
        String sql = "";
        String payment_status = "Pending";

        if (checkConnection.getConnectionStatus() == true) {

            newCon = checkConnection.getConnection();
            Statement st = newCon.createStatement();

            // the mysql insert statement
            String query = "INSERT INTO invoice(member_ID, invoice_ID, gym_total, sports_total, membership_fee, total_payment, confirmed_date, status)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = newCon.prepareStatement(query);
            preparedStmt.setString(1, userId);
            preparedStmt.setInt(2, invoiceid);
            preparedStmt.setDouble(3, gymTotal);
            preparedStmt.setDouble(4, sportsTotal);
            preparedStmt.setDouble(5, membershipFee);
            preparedStmt.setDouble(6, totalPayment);
            preparedStmt.setTimestamp(7, java.sql.Timestamp.valueOf(java.time.LocalDateTime.now()));
            preparedStmt.setString(8, payment_status);

            // execute the preparedstatement
            preparedStmt.execute();

            return true;
        }

        return false;
    }

}
