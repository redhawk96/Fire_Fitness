package Connection;
import java.sql.*;

public class ServerConnection {
    
    	//Creating a static variable 
	private static ServerConnection instance;
        static public Connection con = null;
        private static String url = "jdbc:mysql://127.0.0.1/";
        private static String dbname = "project1";
        private static String username = "root";
        private static String password = "";
        
	
	//Creating a private constructor(outside classes cannot access this)
	private ServerConnection(){}
	
	public static ServerConnection getInstance() {
            if(instance == null) {
                instance = new ServerConnection();
            }
            return instance;
	}
        
        public static void setConnection()throws ClassNotFoundException, SQLException {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url+dbname,username,password);
        }
        
        public static Connection getConnection(){
            return con;
        }
        
        public static boolean getConnectionStatus(){
            if(con != null){
                return true;
            }
            else {
                return false;
            }
        }
        
    }