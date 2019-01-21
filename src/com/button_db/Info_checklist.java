package com.button_db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Info_checklist {
	String checklistname=null;
	String checklistnumber=null,create_date=null,year_of_ck=null;
	int type=0;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	

	public String getvalues() throws SQLException, ClassNotFoundException
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String sql="SELECT * FROM SAFETY_CHECKLIST_INFO";
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
		ps = con.prepareStatement(sql);
		rs=ps.executeQuery();
		
		while(rs.next())
		{
			create_date=rs.getString(1).toString();
		checklistname=rs.getString(2).toString();
		checklistnumber=rs.getString(3).toString();
		type=Integer.parseInt(checklistnumber);
		type=type-1;
		}
		con.close();
		ps.close();
		rs.close();
		year_of_ck=create_date.substring(24,28).toString();
		return year_of_ck+"|"+checklistname+"|"+type;
		
	}
}
