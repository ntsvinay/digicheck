package working;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Incomplete_check_List
 */
@WebServlet("/Incomplete_check_List")
public class Incomplete_check_List extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection co = null;
	PreparedStatement pstm = null;
	ResultSet rset = null;
	String filename = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Incomplete_check_List() {
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

		System.out.println("get");
		try {
			String query = "SELECT * FROM INCOMPLETE_CHECKLIST";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			co = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			pstm = co.prepareStatement(query);
			rset = pstm.executeQuery();
			while (rset.next()) {
				filename = rset.getString(1);

			}
			co.close();
			pstm.close();
			rset.close();
		} catch (Exception e) {
			System.out.println(e);

		}
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(filename);
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("post method");
		// doGet(request, response);
	}

}
