package image;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.button_db.Store_photo_detail;

/**
 * Servlet implementation class Confirm_Image
 */
@WebServlet("/Confirm_Image")
public class Confirm_Image extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String classname = "oracle.jdbc.driver.OracleDriver";
	String user = "system";
	String dbpsw = "nuevo",photo_btn_id="";
	PreparedStatement pstm = null;
	String c_time_date = "", file_name_type = "";
	static int count = 0;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Confirm_Image() {
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
		
		/* response.setContentType("text/html");  
			PrintWriter out = response.getWriter();
			HttpSession session = request.getSession();
			  String photo_button = (String) session.getAttribute("photobutton");*/
		photo_btn_id=request.getParameter("name");
		
			 
			  
		System.out.println("from image");

		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		long millis = System.currentTimeMillis();
		java.util.Date date = new java.util.Date(millis);
		c_time_date = date.toString();
		file_name_type = c_time_date.replaceAll("[^a-zA-Z0-9]+", "_");
		Path temp = Files.move(Paths.get("C:\\Users\\VinayNTS2018\\Downloads\\download"),
				Paths.get("D:\\Other\\Wallpaper\\" + file_name_type + ".jpg"));

		if (temp != null) {
			//insert_image(file_name_type);
			
			System.out.println("File renamed and moved successfully");
		} else {
			System.out.println("Failed to move the file");
		}

		try {
			Thread.sleep(1000);
			//new ImageProfile().getfile("file_name_type");
			new Store_photo_detail().insert_btnvalue(photo_btn_id,file_name_type);
			count = 1;

		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// RequestDispatcher rd=request.getRequestDispatcher("addUserhtml.jsp");
		// rd.forward(request, response);
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

	public void insert_image(String imageName) {
		try {
			Class.forName(classname);
			Connection c = DriverManager.getConnection(url, user, dbpsw);
			c.setAutoCommit(false);
			PreparedStatement pstm = null;
			
			  String sql = "UPDATE USER_PHOTO_DIGI SET USER_DETAILS='" + imageName + "' WHERE TIMESTAMP='" +
			  java.time.LocalDate.now().toString() + "'";
		
			

			/*String sql = "INSERT  INTO COMPLETE_CK_TEST(TIMESTAMP,SCAN_THUMB) VALUES('"
					+ java.time.LocalDate.now().toString() + "','" + imageName + "')";*/

			System.out.println(sql);
			pstm = (PreparedStatement) c.prepareStatement(sql);
			pstm.execute();
			c.commit();
			pstm.close();
			c.close();
		} catch (Exception e) {
			System.out.println(e);

		}
	}

}
