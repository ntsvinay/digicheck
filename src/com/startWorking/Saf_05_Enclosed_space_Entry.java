package com.startWorking;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.button_db.Abc;
import com.button_db.Info_checklist;

/**
 * Servlet implementation class Saf_05_Enclosed_space_Entry
 */
@WebServlet("/Saf_05_Enclosed_space_Entry")
public class Saf_05_Enclosed_space_Entry extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String file_name_for_pic = "";
	String sec4_gas1 = "1", sec4_gas2 = "2", sec4_gas3 = "4", sec4_gas4 = "4", sec4_gas5 = "5", sec4_gas6 = "6",
			sec4_gas7 = "7", sec4_gas8 = "8", sec4_gas9 = "9";
	String sec4_scan1 = "4.1", sec4_scan2 = "4.2", sec4_scan3 = "4.3", sec4_scan4 = "4.4", sec4_scan5 = "4.5",
			sec4_scan6 = "4.6", sec4_scan7 = "4.7", sec4_scan8 = "4.8", sec4_scan9 = "4.9";
	String user_photo1 = "1.1", user_photo2 = "1.2", user_photo3 = "1.3", user_photo4 = "2.1", user_photo5 = "2.2",
			user_photo6 = "2.3", user_photo7 = "3.1", user_photo8 = "3.2", user_photo9 = "4.1", user_photo10 = "4.2",
			user_photo11 = "5.1", user_photo12 = "5.2";
	String user_scan1 = "1.1", user_scan2 = "1.2", user_scan3 = "1.3", user_scan4 = "2.1", user_scan5 = "2.2",
			user_scan6 = "2.3", user_scan7 = "3.1", user_scan8 = "3.2", user_scan9 = "4.2", user_scan10 = "4.3",
			user_scan11 = "5.1", user_scan12 = "5.2", user_scan13 = "5.3", user_scan14 = "5.4";

	String user_scan_in_out1 = "3.1", user_scan_in_out2 = "3.2", user_scan_in_out3 = "3.3", user_scan_in_out4 = "3.4",
			user_scan_in_out5 = "3.5";
	String permit_name = null, file_name = null, c_date = null;
	RequestDispatcher go = null;
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	String checklist_name = null;
	String checklist_number = null;
	String SEC4_GAS_DIGI = null;
	String SEC4_SCAN_DIGI = null;
	String USER_PHOTO_DIGI = null;
	String USER_SCAN_DIGI = null;
	String USER_SCAN_IN_OUT_DIGI = null;
	String COMPLETE_CHECKLISST = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	public Saf_05_Enclosed_space_Entry() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void sec4_gas_digi() throws SQLException {

		String sql1 = "CREATE TABLE SEC4_GAS_DIGI_" + checklist_name + "_" + checklist_number
				+ "(\"OXYGEN\" VARCHAR2(100), \r\n" + "	\"HYDROCARBON\" VARCHAR2(100), \r\n"
				+ "	\"TOXIC_GASES\" VARCHAR2(100), \r\n" + "	\"TIMESTAMP\" VARCHAR2(1000), \r\n"
				+ "	\"POINT_NUMBER\" VARCHAR2(100)\r\n" + "   )";
		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println("table");

	}

	public void insert_sec4_gas_digi() throws SQLException {

		String sql1 = "INSERT ALL   INTO SEC4_GAS_DIGI_" + checklist_name + "_" + checklist_number
				+ " (POINT_NUMBER) VALUES (" + sec4_gas1 + ")  INTO SEC4_GAS_DIGI_" + checklist_name + "_"
				+ checklist_number + " (POINT_NUMBER) VALUES (" + sec4_gas2 + ") INTO SEC4_GAS_DIGI_" + checklist_name
				+ "_" + checklist_number + " (POINT_NUMBER) VALUES (" + sec4_gas3 + ")  INTO SEC4_GAS_DIGI_"
				+ checklist_name + "_" + checklist_number + " (POINT_NUMBER) VALUES (" + sec4_gas4
				+ ")  INTO SEC4_GAS_DIGI_" + checklist_name + "_" + checklist_number + " (POINT_NUMBER) VALUES ("
				+ sec4_gas5 + ")  INTO SEC4_GAS_DIGI_" + checklist_name + "_" + checklist_number
				+ " (POINT_NUMBER) VALUES (" + sec4_gas6 + ") INTO SEC4_GAS_DIGI_" + checklist_name + "_"
				+ checklist_number + " (POINT_NUMBER) VALUES (" + sec4_gas7 + ")   INTO SEC4_GAS_DIGI_" + checklist_name
				+ "_" + checklist_number + " (POINT_NUMBER) VALUES (" + sec4_gas8 + ") INTO SEC4_GAS_DIGI_"
				+ checklist_name + "_" + checklist_number + " (POINT_NUMBER) VALUES (" + sec4_gas9
				+ ") SELECT * FROM dual";
		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println(" inserted table");
	}

	public void sec4_scan_digi() throws SQLException {

		String sql1 = "CREATE TABLE SEC4_SCAN_DIGI_" + checklist_name + "_" + checklist_number
				+ "(\"BUTTON_ID\" VARCHAR2(100), \r\n" + "	\"TIMESTAMP\" VARCHAR2(1000), \r\n"
				+ "	\"USER_DETAILS\" VARCHAR2(1500))";

		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println("table");
	}

	public void insert_sec4_scan_digi() throws SQLException {

		String sql1 = "INSERT ALL   INTO SEC4_SCAN_DIGI_" + checklist_name + "_" + checklist_number
				+ " (BUTTON_ID) VALUES (" + sec4_scan1 + ")  INTO SEC4_SCAN_DIGI_" + checklist_name + "_"
				+ checklist_number + " (BUTTON_ID) VALUES (" + sec4_scan2 + ") INTO SEC4_SCAN_DIGI_" + checklist_name
				+ "_" + checklist_number + " (BUTTON_ID) VALUES (" + sec4_scan3 + ")  INTO SEC4_SCAN_DIGI_"
				+ checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES (" + sec4_scan4
				+ ")  INTO SEC4_SCAN_DIGI_" + checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES ("
				+ sec4_scan5 + ")  INTO SEC4_SCAN_DIGI_" + checklist_name + "_" + checklist_number
				+ " (BUTTON_ID) VALUES (" + sec4_scan6 + ") INTO SEC4_SCAN_DIGI_" + checklist_name + "_"
				+ checklist_number + " (BUTTON_ID) VALUES (" + sec4_scan7 + ")   INTO SEC4_SCAN_DIGI_" + checklist_name
				+ "_" + checklist_number + " (BUTTON_ID) VALUES (" + sec4_scan8 + ") INTO SEC4_SCAN_DIGI_"
				+ checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES (" + sec4_scan9
				+ ") SELECT * FROM dual";
		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println(" inserted table");
	}

	public void sec4_photo_digi() throws SQLException {
		file_name_for_pic = "USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number;
		String sql1 = "CREATE TABLE USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number
				+ "(\"ID\" VARCHAR2(10), \r\n" + "	\"TIMESTAMP\" VARCHAR2(1000), \r\n" + "	\"USER_DETAILS\" BLOB)";

		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println("table");
	}

	public void insert_user_photo_digi() throws SQLException, IOException {

		Abc cal = new Abc();

		cal.store(file_name_for_pic, user_photo1);
		cal.store(file_name_for_pic, user_photo2);
		cal.store(file_name_for_pic, user_photo3);
		cal.store(file_name_for_pic, user_photo4);
		cal.store(file_name_for_pic, user_photo5);
		cal.store(file_name_for_pic, user_photo6);
		cal.store(file_name_for_pic, user_photo7);
		cal.store(file_name_for_pic, user_photo8);
		cal.store(file_name_for_pic, user_photo9);
		cal.store(file_name_for_pic, user_photo10);
		cal.store(file_name_for_pic, user_photo11);
		cal.store(file_name_for_pic, user_photo12);

	
		  for(int i=0;i<=11;i++) { cal.store(file_name_for_pic,""); }
		 
		
		  String sql1 = "INSERT ALL   INTO USER_PHOTO_DIGI_" + checklist_name + "_" +
		  checklist_number + " (ID) VALUES (" + user_photo1 +
		  ")  INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		  " (ID) VALUES (" + user_photo2 + ") INTO USER_PHOTO_DIGI_" + checklist_name +
		  "_" + checklist_number + " (ID) VALUES (" + user_photo3 +
		  ")  INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		  " (ID) VALUES (" + user_photo4 + ")  INTO USER_PHOTO_DIGI_" + checklist_name
		  + "_" + checklist_number + " (ID) VALUES (" + user_photo5 +
		  ")  INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		  " (ID) VALUES (" + user_photo6 + ") INTO USER_PHOTO_DIGI_" + checklist_name +
		  "_" + checklist_number + " (ID) VALUES (" + user_photo7 +
		  ")   INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		  " (ID) VALUES (" + user_photo8 + ") INTO USER_PHOTO_DIGI_" + checklist_name +
		  "_" + checklist_number + " (ID) VALUES (" + user_photo9 +
		  ") INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		  " (ID) VALUES (" + user_photo10 + ")INTO USER_PHOTO_DIGI_" + checklist_name +
		  "_" + checklist_number + " (ID) VALUES (" + user_photo11 +
		  ") INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		  " (ID) VALUES (" + user_photo12 + ") SELECT * FROM dual";
		  System.out.println(sql1);
		  
		  ps = con.prepareStatement(sql1); rs = ps.executeQuery();
		  System.out.println(" inserted table");
		 
		/*
		 * String sql1 = "INSERT ALL   INTO USER_PHOTO_DIGI_" + checklist_name + "_" +
		 * checklist_number + " (ID,USER_DETAILS) VALUES (" + user_photo1 +
		 * ",?)  INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		 * " (ID,USER_DETAILS) VALUES (" + user_photo2 + ",?) INTO USER_PHOTO_DIGI_" +
		 * checklist_name + "_" + checklist_number + " (ID,USER_DETAILS) VALUES (" +
		 * user_photo3 + ",?)  INTO USER_PHOTO_DIGI_" + checklist_name + "_" +
		 * checklist_number + " (ID,USER_DETAILS) VALUES (" + user_photo4 +
		 * ",?)  INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		 * " (ID,USER_DETAILS) VALUES (" + user_photo5 + ",?)  INTO USER_PHOTO_DIGI_" +
		 * checklist_name + "_" + checklist_number + " (ID,USER_DETAILS) VALUES (" +
		 * user_photo6 + ",?) INTO USER_PHOTO_DIGI_" + checklist_name + "_" +
		 * checklist_number + " (ID,USER_DETAILS) VALUES (" + user_photo7 +
		 * ",?)   INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		 * " (ID,USER_DETAILS) VALUES (" + user_photo8 + ",?) INTO USER_PHOTO_DIGI_" +
		 * checklist_name + "_" + checklist_number + " (ID,USER_DETAILS) VALUES (" +
		 * user_photo9 + ",?) INTO USER_PHOTO_DIGI_" + checklist_name + "_" +
		 * checklist_number + " (ID,USER_DETAILS) VALUES (" + user_photo10 +
		 * ",?)INTO USER_PHOTO_DIGI_" + checklist_name + "_" + checklist_number +
		 * " (ID,USER_DETAILS) VALUES (" + user_photo11 + ",?) INTO USER_PHOTO_DIGI_" +
		 * checklist_name + "_" + checklist_number + " (ID,USER_DETAILS) VALUES (" +
		 * user_photo12 + ",?) SELECT * FROM dual"; System.out.println(sql1);
		 * 
		 * ps = con.prepareStatement(sql1); FileInputStream fin = new
		 * FileInputStream("D:\\Other\\Wallpaper\\no_pic.png"); ps.setBinaryStream(1,
		 * fin, fin.available()); int i = ps.executeUpdate(); //rs = ps.executeQuery();
		 * System.out.println(" inserted table");
		 */

	}

	public void user_scan_digi() throws SQLException {

		String sql1 = "CREATE TABLE USER_SCAN_DIGI_" + checklist_name + "_" + checklist_number
				+ "(\"BUTTON_ID\" VARCHAR2(50), \r\n" + "	\"TIMESTAMP\" VARCHAR2(1000), \r\n"
				+ "	\"USER_DETAILS\" VARCHAR2(1500))";

		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println("table");

	}

	public void insert_user_scan_digi() throws SQLException {

		String sql1 = "INSERT ALL   INTO USER_SCAN_DIGI_" + checklist_name + "_" + checklist_number
				+ " (BUTTON_ID) VALUES (" + user_scan1 + ")  INTO USER_SCAN_DIGI_" + checklist_name + "_"
				+ checklist_number + " (BUTTON_ID) VALUES (" + user_scan2 + ") INTO USER_SCAN_DIGI_" + checklist_name
				+ "_" + checklist_number + " (BUTTON_ID) VALUES (" + user_scan3 + ")  INTO USER_SCAN_DIGI_"
				+ checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES (" + user_scan4
				+ ")  INTO USER_SCAN_DIGI_" + checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES ("
				+ user_scan5 + ")  INTO USER_SCAN_DIGI_" + checklist_name + "_" + checklist_number
				+ " (BUTTON_ID) VALUES (" + user_scan6 + ") INTO USER_SCAN_DIGI_" + checklist_name + "_"
				+ checklist_number + " (BUTTON_ID) VALUES (" + user_scan7 + ")   INTO USER_SCAN_DIGI_" + checklist_name
				+ "_" + checklist_number + " (BUTTON_ID) VALUES (" + user_scan8 + ") INTO USER_SCAN_DIGI_"
				+ checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES (" + user_scan9
				+ ") INTO USER_SCAN_DIGI_" + checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES ("
				+ user_scan10 + ") INTO USER_SCAN_DIGI_" + checklist_name + "_" + checklist_number
				+ " (BUTTON_ID) VALUES (" + user_scan11 + ")INTO USER_SCAN_DIGI_" + checklist_name + "_"
				+ checklist_number + " (BUTTON_ID) VALUES (" + user_scan12 + ")INTO USER_SCAN_DIGI_" + checklist_name
				+ "_" + checklist_number + " (BUTTON_ID) VALUES (" + user_scan13 + ")INTO USER_SCAN_DIGI_"
				+ checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES (" + user_scan14
				+ ") SELECT * FROM dual";
		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println(" inserted table");
	}

	public void user_scan_in_out_digi() throws SQLException {

		String sql1 = "CREATE TABLE USER_SCAN_IN_OUT_DIGI_" + checklist_name + "_" + checklist_number
				+ "(\"BUTTON_ID\" VARCHAR2(100), \r\n" + "	\"TIMESTAMP\" VARCHAR2(1000), \r\n"
				+ "	\"USER_DETAILS\" VARCHAR2(1500), \r\n" + "	\"USER_OUT\" VARCHAR2(2000))";

		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println("table");

	}

	public void insert_user_scan_in_out_digi() throws SQLException {

		String sql1 = "INSERT ALL   INTO USER_SCAN_IN_OUT_DIGI_" + checklist_name + "_" + checklist_number
				+ " (BUTTON_ID) VALUES (" + user_scan_in_out1 + ")  INTO USER_SCAN_IN_OUT_DIGI_" + checklist_name + "_"
				+ checklist_number + " (BUTTON_ID) VALUES (" + user_scan_in_out2 + ") INTO USER_SCAN_IN_OUT_DIGI_"
				+ checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES (" + user_scan_in_out3
				+ ")  INTO USER_SCAN_IN_OUT_DIGI_" + checklist_name + "_" + checklist_number + " (BUTTON_ID) VALUES ("
				+ user_scan_in_out4 + ")  INTO USER_SCAN_IN_OUT_DIGI_" + checklist_name + "_" + checklist_number
				+ " (BUTTON_ID) VALUES (" + user_scan_in_out5 + ") SELECT * FROM dual";
		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println(" inserted table");
	}

	public void complete_checklist() throws SQLException {

		String sql1 = "CREATE TABLE COMPLETE_CHECKLIST_" + checklist_name + "_" + checklist_number
				+ " (	\"LOC_OF_ES\" VARCHAR2(2000), \r\n" + "	\"REASN_OF_ES\" VARCHAR2(2000), \r\n"
				+ "	\"SEC1_DATE\" VARCHAR2(200), \r\n" + "	\"SEC1_TIME\" VARCHAR2(200), \r\n"
				+ "	\"SEC1_OXY\" NUMBER, \r\n" + "	\"SEC1_HYDRO\" NUMBER, \r\n" + "	\"SEC1_TOXIC\" NUMBER, \r\n"
				+ "	\"CONDITION_1\" VARCHAR2(5), \r\n" + "	\"CONDITION_2\" VARCHAR2(5), \r\n"
				+ "	\"CONDITION_3\" VARCHAR2(5), \r\n" + "	\"SEC2_INTERVAL\" NUMBER, \r\n"
				+ "	\"SEC2_MINTBY\" VARCHAR2(500), \r\n" + "	\"CONDITION_4\" VARCHAR2(5), \r\n"
				+ "	\"CONDITION_5\" VARCHAR2(5), \r\n" + "	\"CONDITION_6\" VARCHAR2(5), \r\n"
				+ "	\"SEC3_FROM_DATE\" VARCHAR2(500), \r\n" + "	\"SEC3_FROM_TIME\" VARCHAR2(500), \r\n"
				+ "	\"SEC3_TO_DATE\" VARCHAR2(500), \r\n" + "	\"SEC3_TO_TIME\" VARCHAR2(500), \r\n"
				+ "	\"SEC4_OXY\" VARCHAR2(20), \r\n" + "	\"SEC4_HYDRO\" VARCHAR2(20), \r\n"
				+ "	\"SEC4_TOXIC\" VARCHAR2(20), \r\n" + "	\"CONDITION_7\" VARCHAR2(500), \r\n"
				+ "	\"CONDITION_8\" VARCHAR2(5), \r\n" + "	\"CONDITION_9\" VARCHAR2(5), \r\n"
				+ "	\"CONDITION_10\" VARCHAR2(5), \r\n" + "	\"CONDITION_11\" VARCHAR2(5), \r\n"
				+ "	\"TIMESTAMP\" VARCHAR2(4000)\r\n" + "   )";

		System.out.println(sql1);

		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println("table");
	}

	public void up_safety_checklist_info() throws SQLException {
		String sql1 = "UPDATE SAFETY_CHECKLIST_INFO SET CHECKLIST_NUMBER=CHECKLIST_NUMBER+1,CREATION_DATE='" + file_name
				+ "'";
		System.out.println(sql1);
		ps = con.prepareStatement(sql1);
		rs = ps.executeQuery();
		System.out.println("UPDATED");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("from get method of start working");
		long millis = System.currentTimeMillis();
		java.util.Date date = new java.util.Date(millis);
		c_date = date.toString();
		file_name = c_date.replaceAll("[^a-zA-Z0-9]+", "_");
		try {
			permit_name = new Info_checklist().getvalues();
			System.out.println(permit_name);
		} catch (SQLException | ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		request.setAttribute("permit_name", permit_name);
		go = request.getRequestDispatcher("/Safety3.jsp");
		go.forward(request, response);

		// response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "nuevo");
			ps = con.prepareStatement("SELECT *FROM SAFETY_CHECKLIST_INFO");
			rs = ps.executeQuery();
			if (rs.next()) {
				checklist_name = rs.getString(2);
				checklist_number = rs.getString(3);
				SEC4_GAS_DIGI = "_gas_digi_" + checklist_name + "_" + checklist_number + "";
//********************update table*******************************************	  
			//up_safety_checklist_info();

//********************************************************************************		  

//**************************create table***********************************				
				
				/*  sec4_gas_digi(); sec4_scan_digi(); sec4_photo_digi(); user_scan_digi();
				  user_scan_in_out_digi(); complete_checklist();
				 
//**************************************table created************************

//-------------------------------------------------------insert table-----------------------------------------------------------------			  
				
				  insert_sec4_gas_digi(); insert_sec4_scan_digi(); insert_user_photo_digi();
				  insert_user_scan_digi(); insert_user_scan_in_out_digi();
				 */
//----------------table inserted---------------------------------------------------------			 

			} else {
				System.out.println("no data found");
			}

			con.close();
			rs.close();
			ps.close();
			Thread.sleep(100);
		}

		catch (Exception e) {
			System.out.println(e);

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
	}

}
