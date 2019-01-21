package com.button_db;

import java.sql.*;
import java.io.*;

public class Abc {
	String value_for_store="";
	public void store(String table,String id) {
		value_for_store=id;
		//String USER_PHOTO_DIGI = "USER_PHOTO_DIGI_AAA_46", btn_id = "1.2";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			String sql = "INSERT INTO " + table + " (ID,USER_DETAILS)VALUES(?,?)";

					/*"UPDATE " + USER_PHOTO_DIGI + " SET TIMESTAMP='" + java.time.LocalDate.now().toString() + "',"
							+ "USER_DETAILS=? where ID ='" + btn_id + "'";*/

			System.out.println(sql);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, value_for_store);

			FileInputStream fin = new FileInputStream("D:\\Other\\Wallpaper\\no_pic.png");
			ps.setBinaryStream(2, fin, fin.available());
			int i = ps.executeUpdate();
			System.out.println(i + " records affected");
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}