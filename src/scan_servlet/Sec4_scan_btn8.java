package scan_servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.button_db.Store_scan_detail;
import com.button_db.Store_sec4_scan_detail;

import jssc.SerialPortException;
import scan_Checklist.ScanThumb;

/**
 * Servlet implementation class Sec4_scan_btn8
 */
@WebServlet("/Sec4_scan_btn8")
public class Sec4_scan_btn8 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String user_scan_Info = null, button_id = "4.9";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Sec4_scan_btn8() {
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
		user_info();
		System.out.println(user_scan_Info);
		if (user_scan_Info.length() > 30) {
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(user_scan_Info);
			if (!user_scan_Info.equals("Sorry You are Not Authorised for this :(")) {
				new Store_sec4_scan_detail().insert_scanvalue(user_scan_Info, button_id);
			}

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
		doGet(request, response);
	}

	public void user_info() {
		try {

			user_scan_Info = new ScanThumb().scan_data();
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
