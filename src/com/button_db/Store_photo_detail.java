package com.button_db;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Store_photo_detail {
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
	String USER_PHOTO_DIGI = null;

	public void getvalues() throws SQLException {
		String sql = "SELECT * FROM SAFETY_CHECKLIST_INFO";
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();

		while (rs.next()) {
			checklistname = rs.getString(2).toString();
			checklistnumber = rs.getString(3).toString();
			type = Integer.parseInt(checklistnumber);
			type = type - 1;
		}
		USER_PHOTO_DIGI = " USER_PHOTO_DIGI_" + checklistname + "_" + type + "";
		// USER_PHOTO_DIGI="USER_PHOTO_DIGI_AAA_46";
		System.out.println(USER_PHOTO_DIGI);
	}

	public void insert_btnvalue(String btn_id, String file_name) {

		try {

			Class.forName(classname);
			con = DriverManager.getConnection(url, user, dbpsw);
			con.setAutoCommit(false);
			getvalues();

			String sql = // "INSERT INTO " + USER_PHOTO_DIGI + " (TIMESTAMP,USER_DETAILS)VALUES(?,?)";

					"UPDATE " + USER_PHOTO_DIGI + " SET TIMESTAMP='" + java.time.LocalDate.now().toString() + "',"
							+ "USER_DETAILS=? where ID ='" + btn_id + "'";

			System.out.println(sql);
			PreparedStatement ps = con.prepareStatement(sql);
			FileInputStream fin = new FileInputStream("D:\\Other\\Wallpaper\\" + file_name + ".jpg");
			ps.setBinaryStream(1, fin, fin.available());
			int i = ps.executeUpdate();
			System.out.println(i + " records affected");
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		/*
		 * try { System.out.println("from save_user_scan_detail");
		 * Class.forName(classname); con = DriverManager.getConnection(url, user,
		 * dbpsw); con.setAutoCommit(false); PreparedStatement pstm = null; getvalues();
		 * String sql = "UPDATE " + USER_PHOTO_DIGI + " SET TIMESTAMP='" +
		 * java.time.LocalDate.now().toString() + "'," +
		 * "USER_DETAILS=? where PHOTO_BTN_ID ='" + btn_id + "'";
		 * 
		 * pstm = (PreparedStatement) con.prepareStatement(sql); FileInputStream fin =
		 * new FileInputStream("D:\\Other\\Wallpaper\\" + file_name + ".png");
		 * System.out.println(fin); pstm.setBinaryStream(2, fin, fin.available());
		 * 
		 * System.out.println(sql);
		 * 
		 * 
		 * "INSERT INTO USER_SCAN_DIGI(BUTTON_ID,TIMESTAMP,USER_DETAILS) VALUES('" +
		 * btn_id + "','" + java.time.LocalDate.now().toString() + "')";
		 * 
		 * 
		 * pstm.executeUpdate(); con.commit(); pstm.close(); con.close(); } catch
		 * (Exception e) { System.out.println(e);
		 * 
		 * }
		 */
	}
}
