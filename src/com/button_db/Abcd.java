package com.button_db;

import java.sql.*;
import java.util.Base64;
import java.io.*;

public class Abcd {
	public static void main(String[] args) {
		StringBuffer sb = new StringBuffer();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from USER_PHOTO_DIGI_AAA_46");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\klamn.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				sb.append(imgDataBase64);
				fout.write(barr);
				// System.out.println(barr.toString());
				fout.close();
			} // end of if
			System.out.println(sb.length());

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}