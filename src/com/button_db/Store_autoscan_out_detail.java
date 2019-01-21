package com.button_db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.corba.se.impl.encoding.CodeSetConversion.BTCConverter;

public class Store_autoscan_out_detail {
	String db_in_value = "";
	String last_value = "";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String classname = "oracle.jdbc.driver.OracleDriver";
	PreparedStatement pstm = null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String driverName1 = "oracle.jdbc.driver.OracleDriver";
	String url1 = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "System";
	String dbpsw = "Nuevo";
	String USER_SCAN_IN_OUT_DIGI = null;
	String checklistname = null;
	String checklistnumber = null;
	int type = 0;

	public void getvalues() throws SQLException, ClassNotFoundException {
		PreparedStatement pstmg = null;
		Connection cong = null;
		ResultSet rsg = null;
		Class.forName(driverName);
		cong = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
		String sql = "SELECT * FROM SAFETY_CHECKLIST_INFO";
		pstmg = cong.prepareStatement(sql);
		rsg = pstmg.executeQuery();
		while (rsg.next()) {
			checklistname = rsg.getString(2).toString();
			checklistnumber = rsg.getString(3).toString();
			System.out.println("heheheh");
			System.out.println(sql);
			type = Integer.parseInt(checklistnumber);
			type = type - 1;
		}
		cong.close();
		rsg.close();
		pstmg.close();
		USER_SCAN_IN_OUT_DIGI = " USER_SCAN_IN_OUT_DIGI_" + checklistname + "_" + type + "";
		System.out.println(USER_SCAN_IN_OUT_DIGI);
	}

	public void insert_scanvalue(String value, String btn_id) {
		checking_scan(value, btn_id);
	}

	public void checking_scan(String value, String btn_id) {

		PreparedStatement pstmc = null;
		Connection conc = null;
		ResultSet rsc = null;
		String val = value, id = btn_id;
		String subval = "";
		// System.out.println(val = "value from store" + id + "value from
		// btn*&*&*&*&*");
		try {
			getvalues();
			Class.forName(driverName1);
			conc = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			String sql11 = "select * from " + USER_SCAN_IN_OUT_DIGI + " where BUTTON_ID='" + btn_id + "'and TIMESTAMP='"
					+ java.time.LocalDate.now().toString() + "'";
			System.out.println(sql11);
			pstmc = conc.prepareStatement(sql11);
			rsc = pstmc.executeQuery();
			System.out.println("before executing while loop");
			while (rsc.next()) {
				System.out.println("here is the value:-" + rsc.getString(3).toString());
				db_in_value = rsc.getString("USER_DETAILS").toString();
				subval = db_in_value.substring(0, 23);
				if (value.contains(subval)) {
					insert_scanvalue_out(val, id);
				} else {
				}

			}
			conc.close();
			rsc.close();
			pstmc.close();

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e);
		}
	}

	public void insert_scanvalue_out(String value, String btn_id) {
		try {

			System.out.println("from save_user_scan_detail");
			Class.forName(classname);
			con = DriverManager.getConnection(url, user, dbpsw);
			con.setAutoCommit(false);
			PreparedStatement pstm = null;
			System.out.println("sql");
			String sql = "UPDATE " + USER_SCAN_IN_OUT_DIGI + " set  USER_OUT='" + value + "'where BUTTON_ID='" + btn_id
					+ "' AND TIMESTAMP='" + java.time.LocalDate.now().toString() + "'";
			// "INSERT INTO USER_SCAN_IN_OUT_DIGI(USER_OUT) VALUES('" + value + "')";
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
