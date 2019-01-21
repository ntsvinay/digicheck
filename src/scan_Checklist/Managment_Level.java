package scan_Checklist;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jssc.SerialPortException;

/**
 * Servlet implementation class Managment_Level
 */
@WebServlet("/Managment_Level")
public class Managment_Level extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String user_name = "Vinay ", user_rank = "Master", user_join = " 10/Nov/2018", user_title = "Mr. ",
			user_last_name = "Mohniya";
	String name_and_loc_En_Space = "", reason_enrty_En_Space = "", PREPRATION_Date = "", Check1 = "", Check2 = "",
			Check3 = "", Check4 = "", PREPRATION_Time = "", PREPRATION_Oxy = "", PREPRATION_Hydro = "",
			PREPRATION_ToxicGas = "", Check5 = "", Check6 = "", Check7 = "", interval = "", interval_mintby = "",
			date_2 = "", date_3 = "", time_2 = "", time_3 = "";
	String user_scan_Info = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Managment_Level() {
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
		String test = request.getParameter("textBody"); 
		System.out.println(test+"from doget method");
		user_info();
		System.out.println("abcd from get method");
		System.out.println(user_scan_Info);
		if (user_scan_Info.length() > 30) {
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(user_scan_Info);
			new Save_user_scan_detail().insert_scanvalue(user_scan_Info);
		} else {
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write("unsuccessful...! try again");
		}
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String test = request.getParameter("textBody"); 
		System.out.println(test+"from doget method");
		if (request.getParameter("detail") != null) {
			name_and_loc_En_Space = request.getParameter("name_loc");
			reason_enrty_En_Space = request.getParameter("entry_reason");
			Check1 = request.getParameter("SPACE_VENTILATED");
			Check2 = request.getParameter("SPACE_Clean");
			Check3 = request.getParameter("SPACE_Tested");
			Check4 = request.getParameter("O_H_T");
			Check5 = request.getParameter("five_radio");
			Check6 = request.getParameter("six_radio");
			Check7 = request.getParameter("seven_radio");
			date_2 = request.getParameter("date_second");
			date_3 = request.getParameter("date_third");
			time_2 = request.getParameter("time_second");
			interval = request.getParameter("interval");
			interval_mintby = request.getParameter("interval_minute");
			time_3 = request.getParameter("time_third");
			PREPRATION_Date = request.getParameter("date_prep");
			PREPRATION_Time = request.getParameter("time_prep");

			System.out.println(name_and_loc_En_Space + "\n" + reason_enrty_En_Space + "\n" + Check1 + "\n" + Check2
					+ "\n" + Check3 + "\n" + Check4 + "\n" + PREPRATION_Date + "\n" + PREPRATION_Time + "\n" + Check5
					+ "\n" + Check6 + "\n" + Check7 + "\n" + date_2 + "\n" + date_3 + "\n" + time_2 + "\n" + time_3
					+ "\n" + interval + "\n" + interval_mintby);
		} else if (request.getParameter("scan") != null) {
			try {

				user_scan_Info = new Managment_ScanThumb().scan_data();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SerialPortException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// doGet(request, response);
	}

	public void user_info() {
		try {

			user_scan_Info = new Managment_ScanThumb().scan_data();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SerialPortException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
