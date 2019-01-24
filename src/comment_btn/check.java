package comment_btn;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String id="";
	String comment="";
	ResultSet rs = null;
	Connection con = null;
	String opass="",pass="",cpass="";
	PrintWriter out=null;
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("abc");
		  id = request.getParameter("name");
		System.out.println(id);

}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("from post methods");
		 comment = request.getParameter("name");

		System.out.println(comment);
	
		
try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "System", "nuevo");

			PreparedStatement ps = con.prepareStatement("update USER_PHOTO_DIGI_SAFETY_4 set comments=? where ID=? ");
			ps.setString(1, comment);
			ps.setString(2, id);

			rs = ps.executeQuery();
			System.out.println("data updated");
			
			con.close();
			ps.close();
			rs.close();
			Thread.sleep(200);

		}
		

		catch (Exception e2)

		{
			out.print("Old password in ot correct"+e2);

			e2.printStackTrace();

		}}

}




		
		
		
	




