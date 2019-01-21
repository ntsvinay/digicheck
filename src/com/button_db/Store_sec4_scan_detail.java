package com.button_db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Store_sec4_scan_detail {
	String last_value = "";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String classname = "oracle.jdbc.driver.OracleDriver";
	PreparedStatement pstm = null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String url1 = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "System";
	String dbpsw = "Nuevo";
	String checklistname = null;
	String checklistnumber = null;
	int type = 0;
	String SEC4_SCAN_DIGI = null;
	public void getvalues() throws SQLException
	{
		String sql="SELECT * FROM SAFETY_CHECKLIST_INFO";
		ps = con.prepareStatement(sql);
		rs=ps.executeQuery();
		
		while(rs.next())
		{
		checklistname=rs.getString(2).toString();
		checklistnumber=rs.getString(3).toString();
		type=Integer.parseInt(checklistnumber);
		type=type-1;
		}
		SEC4_SCAN_DIGI=" SEC4_SCAN_DIGI_"+checklistname+ "_"+type+"";
		System.out.println(SEC4_SCAN_DIGI);
	}


	public void insert_scanvalue(String value, String btn_id) {
		try {
			System.out.println("from save_user_scan_detail");
			Class.forName(classname);
			 con = DriverManager.getConnection(url, user, dbpsw);
			con.setAutoCommit(false);
			PreparedStatement pstm = null;
			getvalues();

			String sql = "UPDATE "+SEC4_SCAN_DIGI+" SET TIMESTAMP='" + java.time.LocalDate.now().toString() + "',"+ "USER_DETAILS='" + value + "'where BUTTON_ID='" + btn_id + "'";

			/*
			 * "INSERT INTO SEC4_GAS_DIGI(BUTTON_ID,TIMESTAMP,USER_DETAILS) VALUES('" +
			 * btn_id + "','" + java.time.LocalDate.now().toString() + "','" + value + "')";
			 */

			System.out.println(sql);
			pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.execute();
			con.commit();
			pstm.close();
			con.close();
		} catch (Exception e) {
			System.out.println(e);

		}
	}
}
