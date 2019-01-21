package com.complete_checkList;

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

/**
 * Servlet implementation class Complete_check
 */
@WebServlet("/Complete_check")
public class Complete_check extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String classname = "oracle.jdbc.driver.OracleDriver";
	String user = "system";
	String dbpsw = "nuevo";
	PreparedStatement pstm = null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	int increase = 0;
	String sec4_toxic = "sec4_toxic", sec4_oxy = "sec4_oxy", sec4_hydro = "sec4_hydro";
	String val = "";
	String name_and_loc_En_Space = "", sec1_date = "", sec1_time = "", reason_enrty_En_Space = "", sec1_radiobtn_1 = "",
			sec1_radiobtn_2 = "", sec1_radiobtn_3 = "", PREPRATION_Oxy = "", PREPRATION_Hydro = "",
			PREPRATION_ToxicGas = "";
	String sec2_radiobtn_1 = "", sec2_radiobtn_2 = "", sec2_radiobtn_3 = "", interval = "", interval_mintby = "",
			sec3_from_date = "", sec3_to_date = "", sec3_from_time = "", sec3_to_time = "";
	String sec4_everyHour = "", sec4_oxy1 = "", sec4_hydro1 = "", sec4_toxic1 = "", sec4_oxy2 = "", sec4_hydro2 = "",
			sec4_toxic2 = "", sec4_oxy3 = "", sec4_hydro3 = "", sec4_toxic3 = "", sec4_oxy4 = "", sec4_hydro4 = "",
			sec4_toxic4 = "", sec4_oxy5 = "", sec4_hydro5 = "", sec4_toxic5 = "", sec4_oxy6 = "", sec4_hydro6 = "",
			sec4_toxic6 = "", sec4_oxy7 = "", sec4_hydro7 = "", sec4_toxic7 = "", sec4_oxy8 = "", sec4_hydro8 = "",
			sec4_toxic8 = "", sec4_toxic9 = "", sec4_oxy9 = "", sec4_hydro9 = "", sec4_radiobtn_1 = "",
			sec4_radiobtn_2 = "";
	String sec5_radiobtn_1 = "", sec5_radiobtn_2 = "", sec5_radiobtn_3 = "";
	String user_scan_Info = null;
	String checklistname = null;
	String checklistnumber = null;
	int type = 0;
	String COMPLETE_CHECKLIST = null;
	String SEC4_GAS_DIGI = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

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
		COMPLETE_CHECKLIST = " COMPLETE_CHECKLIST_" + checklistname + "_" + type + "";
		SEC4_GAS_DIGI = " SEC4_GAS_DIGI_" + checklistname + "_" + type + "";
		System.out.println(COMPLETE_CHECKLIST);
	}

	public Complete_check() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		val = request.getParameter("value_of_div");
		System.out.println("here is the value of button:-" + val);
		name_and_loc_En_Space = request.getParameter("enclo_space");
		reason_enrty_En_Space = request.getParameter("reason_enclo_space");
		PREPRATION_Oxy = request.getParameter("sec1_oxygen");
		PREPRATION_Hydro = request.getParameter("sec1_hydrocarbon");
		PREPRATION_ToxicGas = request.getParameter("sec1_toxic_gas");
		sec1_date = request.getParameter("sec1_date");
		sec1_time = request.getParameter("sec1_time");
		sec1_radiobtn_1 = request.getParameter("optradio1");
		sec1_radiobtn_2 = request.getParameter("optradio2");
		sec1_radiobtn_3 = request.getParameter("optradio4");
		sec2_radiobtn_1 = request.getParameter("optradio5");
		sec2_radiobtn_2 = request.getParameter("optradio6");
		sec2_radiobtn_3 = request.getParameter("optradio7");
		sec4_radiobtn_1 = request.getParameter("optradio8");
		sec4_radiobtn_2 = request.getParameter("optradio9");
		sec5_radiobtn_1 = request.getParameter("optradio10");
		sec5_radiobtn_2 = request.getParameter("optradio11");
		System.out.println(sec1_radiobtn_1 + sec1_radiobtn_2 + sec1_radiobtn_3 + sec2_radiobtn_1 + sec2_radiobtn_2
				+ sec2_radiobtn_3 + sec4_radiobtn_1 + sec4_radiobtn_2 + sec5_radiobtn_1 + sec5_radiobtn_2);
		sec3_from_date = request.getParameter("sec3_from_date");
		sec3_to_date = request.getParameter("sec3_to_date");
		interval = request.getParameter("interval_value");
		interval_mintby = request.getParameter("interval_by");
		sec3_from_time = request.getParameter("sec3_from_time");
		sec3_to_time = request.getParameter("sec3_to_time");
		sec4_everyHour = request.getParameter("sec4_everyHour");

		// *****------------section 4 gases-------------------*****

		sec4_oxy1 = request.getParameter("sec4_oxy");
		sec4_hydro1 = request.getParameter("sec4_hydro");
		sec4_toxic1 = request.getParameter("sec4_tosic");
		if (sec4_oxy1 != null || sec4_hydro1 != null || sec4_toxic1 != null) {
			insert_sec4_details("1", sec4_oxy1, sec4_hydro1, sec4_toxic1);
		}
		sec4_oxy2 = request.getParameter("ButtonId1Entry1");
		sec4_hydro2 = request.getParameter("ButtonId1Entry2");
		sec4_toxic2 = request.getParameter("ButtonId1Entry3");
		if (sec4_oxy2 != null || sec4_hydro2 != null || sec4_toxic2 != null) {
			insert_sec4_details("2", sec4_oxy2, sec4_hydro2, sec4_toxic2);
		}
		sec4_oxy3 = request.getParameter("ButtonId2Entry1");
		sec4_hydro3 = request.getParameter("ButtonId2Entry2");
		sec4_toxic3 = request.getParameter("ButtonId2Entry3");
		if (sec4_oxy3 != null || sec4_hydro3 != null || sec4_toxic3 != null) {
			insert_sec4_details("3", sec4_oxy3, sec4_hydro3, sec4_toxic3);
		}
		sec4_oxy4 = request.getParameter("ButtonId3Entry1");
		sec4_hydro4 = request.getParameter("ButtonId3Entry2");
		sec4_toxic4 = request.getParameter("ButtonId3Entry3");
		if (sec4_oxy4 != null || sec4_hydro4 != null || sec4_toxic4 != null) {
			insert_sec4_details("4", sec4_oxy4, sec4_hydro4, sec4_toxic4);
		}
		sec4_oxy5 = request.getParameter("ButtonId4Entry1");
		sec4_hydro5 = request.getParameter("ButtonId4Entry2");
		sec4_toxic5 = request.getParameter("ButtonId4Entry3");
		if (sec4_oxy5 != null || sec4_hydro5 != null || sec4_toxic5 != null) {
			insert_sec4_details("5", sec4_oxy5, sec4_hydro5, sec4_toxic5);
		}
		sec4_oxy6 = request.getParameter("ButtonId5Entry1");
		sec4_hydro6 = request.getParameter("ButtonId5Entry2");
		sec4_toxic6 = request.getParameter("ButtonId5Entry3");
		if (sec4_oxy6 != null || sec4_hydro6 != null || sec4_toxic6 != null) {
			insert_sec4_details("6", sec4_oxy6, sec4_hydro6, sec4_toxic6);
		}
		sec4_oxy7 = request.getParameter("ButtonId6Entry1");
		sec4_hydro7 = request.getParameter("ButtonId6Entry2");
		sec4_toxic7 = request.getParameter("ButtonId6Entry3");
		if (sec4_oxy7 != null || sec4_hydro7 != null || sec4_toxic7 != null) {
			insert_sec4_details("7", sec4_oxy7, sec4_hydro7, sec4_toxic7);
		}
		sec4_oxy8 = request.getParameter("ButtonId7Entry1");
		sec4_hydro8 = request.getParameter("ButtonId7Entry2");
		sec4_toxic8 = request.getParameter("ButtonId7Entry3");
		if (sec4_oxy8 != null || sec4_hydro8 != null || sec4_toxic8 != null) {
			insert_sec4_details("8", sec4_oxy8, sec4_hydro8, sec4_toxic8);
		}
		sec4_oxy9 = request.getParameter("ButtonId8Entry1");
		sec4_hydro9 = request.getParameter("ButtonId8Entry2");
		sec4_toxic9 = request.getParameter("ButtonId8Entry3");
		if (sec4_oxy9 != null || sec4_hydro9 != null || sec4_toxic9 != null) {
			insert_sec4_details("9", sec4_oxy9, sec4_hydro9, sec4_toxic9);
		}
		// *****end of section for

		System.out.println(sec4_hydro1 + "," + sec4_oxy1 + "," + sec4_toxic1 + "\n" + sec4_hydro2 + "," + sec4_oxy2
				+ "," + sec4_toxic2);
		insert_data();
		/*
		 * for (increase = 0; increase <= 2; increase++) {
		 * System.out.println(sec4_oxy+increase+"\n"+sec4_hydro+increase+"\n"+sec4_toxic
		 * +increase);
		 * insert_sec4_details(sec4_oxy+increase,sec4_hydro+increase,sec4_toxic+increase
		 * ); }
		 */
		/*
		 * System.out.println(name_and_loc_En_Space + "\n" + reason_enrty_En_Space +
		 * "\n" + interval + interval_mintby + "\n" + PREPRATION_Oxy + "\n" +
		 * PREPRATION_Hydro + "\n" + sec4_everyHour + "\n" + sec4_hydro1 + "\n" +
		 * sec4_oxy1 + "\n" + sec4_toxic1 + "\n" + sec4_hydro2 + "\n" + sec4_oxy2 + "\n"
		 * + sec4_toxic2);
		 */
		request.setAttribute("name_and_loc_En_Space", name_and_loc_En_Space);
		request.setAttribute("reason_enrty_En_Space", reason_enrty_En_Space);
		request.setAttribute("PREPRATION_Oxy", PREPRATION_Oxy);
		request.setAttribute("PREPRATION_Hydro", PREPRATION_Hydro);
		request.setAttribute("PREPRATION_ToxicGas", PREPRATION_ToxicGas);
		request.setAttribute("sec1_date", sec1_date);
		request.setAttribute("sec1_time", sec1_time);
		request.setAttribute("interval", interval);
		request.setAttribute("interval_mintby", interval_mintby);
		request.setAttribute("sec3_from_date", sec3_from_date);
		request.setAttribute("sec3_to_date", sec3_to_date);
		request.setAttribute("sec3_from_time", sec3_from_time);
		request.setAttribute("sec3_to_time", sec3_to_time);
		RequestDispatcher rd = request.getRequestDispatcher("/includechecklist.jsp");
		 rd.forward(request, response);
		// doGet(request, response);
	}

	public void insert_sec4_details(String point, String a, String b, String cd) {
		try {

			PreparedStatement pstm = null;
			Class.forName(classname);
			con = DriverManager.getConnection(url, user, dbpsw);
			con.setAutoCommit(false);
			System.out.println(a);

			/*
			 * String a = this.sec4_oxy + increase; String b = this.sec4_hydro + increase;
			 * String cd = this.sec4_toxic + increase;
			 */

			getvalues();

			String sql = "UPDATE " + SEC4_GAS_DIGI + " SET OXYGEN='" + a + "'," + "HYDROCARBON='" + b + "',"
					+ "TOXIC_GASES='" + cd + "'," + "TIMESTAMP='" + java.time.LocalDate.now().toString()
					+ "'where POINT_NUMBER='" + point + "'";
			/*
			 * "INSERT  INTO SEC4_GAS_DIGI VALUES('" + a + "','" + b + "', '" + cd + "','" +
			 * java.time.LocalDate.now().toString() + "','" + point + "')";
			 */
			System.out.println(sql);
			System.out.println("it is the value of:-" + a + "\n" + b + "\n" + cd);
			System.out.println(sql);
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			con.commit();

			pstm.close();
			con.close();
		} catch (Exception e) {
			System.out.println(e);

		}
	}

	public void insert_data() {
		try {
			Class.forName(classname);
			con = DriverManager.getConnection(url, user, dbpsw);
			con.setAutoCommit(false);
			PreparedStatement pstm = null;
			getvalues();

			String sql = "INSERT  INTO " + COMPLETE_CHECKLIST + " VALUES('" + name_and_loc_En_Space + "','"
					+ reason_enrty_En_Space + "','" + sec1_date + "'," + "'" + sec1_time + "','" + PREPRATION_Oxy
					+ "','" + PREPRATION_Hydro + "','" + PREPRATION_ToxicGas + "'," + "'" + sec1_radiobtn_1 + "','"
					+ sec1_radiobtn_2 + "','" + sec1_radiobtn_3 + "','" + interval + "','" + interval_mintby + "','"
					+ sec2_radiobtn_1 + "','" + sec2_radiobtn_2 + "','" + sec2_radiobtn_3 + "','" + sec3_from_date
					+ "','" + sec3_from_time + "','" + sec3_to_date + "','" + sec3_to_time + "','" + sec4_oxy1 + "','"
					+ sec4_hydro1 + "','" + sec4_toxic1 + "','" + sec4_everyHour + "','" + sec4_radiobtn_1 + "','"
					+ sec4_radiobtn_2 + "','" + sec5_radiobtn_1 + "', '" + sec5_radiobtn_2 + "','"
					+ java.time.LocalDate.now().toString() + "')";
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
