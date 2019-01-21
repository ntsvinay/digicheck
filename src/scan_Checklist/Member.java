package scan_Checklist;

import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Member {
	
	static String c_time_date="";
	public static String membr(String id) throws ClassNotFoundException, SQLException {
		String usr_f_name="",usr_l_name="",usr_rank="",usr_title="",c_d_time="";
		System.out.println(id);
		String url = "jdbc:oracle:thin:@localhost:1521:xe", dbuser = "system", dbpass = "nuevo",
				drivr = "oracle.jdbc.driver.OracleDriver", query = "select * from USERDB_DIGI";
		String number="",id_number="";
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		Class.forName(drivr);
		con=DriverManager.getConnection(url, dbuser, dbpass);
		stmt=con.createStatement();
		rs=stmt.executeQuery(query);
		while(rs.next())
		{
			number=rs.getString(1);
			System.out.println(number);
			if(id.contains(number))
			{
				id_number=number;
				usr_title=rs.getString(2);
				usr_f_name=rs.getString(3);
				usr_l_name=rs.getString(5);
				usr_rank=rs.getString(7);
			}
		}
		con.close();
		stmt.close();
		rs.close();
		System.out.println(id_number+"from id ");
		c_d_time=currnet_Date();
		return usr_title+"  "+usr_f_name+"  "+usr_l_name+" , "+usr_rank+" , "+c_d_time;

	}
	
	  public static String currnet_Date() {    
	   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");  
	   LocalDateTime now = LocalDateTime.now(); 
	   c_time_date=dtf.format(now).toString(); 
	   return c_time_date;
	  }    
	   

}
