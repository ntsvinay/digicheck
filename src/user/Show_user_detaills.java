package user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Show_user_detaills
 */
@WebServlet("/Show_user_detaills")
public class Show_user_detaills extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String title = "", first_Name = "", middle_Name = "", last_Name = "", sign_Date = "", rank = "", thumb_Id = "";
	String retri_title = "", retri_first_Name = "", retri_middle_Name = "",null_middle_name=" ", retri_last_Name = "", retri_sign_Date = "",
			retri_rank = "", retri_thumb_Id = "";
	StringBuilder retrieve_title = new StringBuilder();
	StringBuilder retrieve_name = new StringBuilder();
	StringBuilder retrieve_m_name = new StringBuilder();
	StringBuilder retrieve_l_name = new StringBuilder();
	StringBuilder retrieve_join_date = new StringBuilder();
	StringBuilder retrieve_rank = new StringBuilder();
	StringBuilder retrieve_thumb_id = new StringBuilder();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Show_user_detaills() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("id-" + thumb_Id);
		/*System.out.println("Jai Shiv Shambhoo");
		System.out.println("Jai Bhole Nath");*/
		retreive_all_User();
		request.setAttribute("retrieve_title", retrieve_title);
		request.getRequestDispatcher("/userManagement.jsp").forward(request, response);
		retrieve_title.setLength(0);
	}

	public void retreive_all_User() {
		System.out.println("from retreive method");
		Connection co = null;
		PreparedStatement pstm = null;
		ResultSet rset = null;
		try {
			String query = "SELECT * FROM USERDB_DIGI";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			co = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			pstm = co.prepareStatement(query);
			rset = pstm.executeQuery();
			while (rset.next()) {
				retri_thumb_Id = rset.getString(1);
				retri_title = rset.getString(2);
				retri_first_Name = rset.getString(3);
				retri_middle_Name = rset.getString(4);
				retri_last_Name = rset.getString(5);
				retri_sign_Date = rset.getString(6);
				retri_rank = rset.getString(7);
				if(retri_rank.equals("CHIEF ENGINEER")||retri_rank.equals("MASTER")||retri_rank.equals("CHIEF MATE"))
				{
					retrieve_title.append("[").append("\"")
					.append(retri_title + " " + retri_first_Name + " " +""+ " " + retri_last_Name)
					.append("\"").append(",").append("\"").append(retri_rank).append("\"").append(",").append("\"")
					.append(retri_sign_Date).append("\"").append(",").append("\"").append("MANAGEMENT").append("\"").append("]").append(",");
				}
				else if(retri_rank.equals("THIRD MATE")||retri_rank.equals("THIRD ENGINEER")||retri_rank.equals("SECOND MATE"))
				{
					retrieve_title.append("[").append("\"")
					.append(retri_title + " " + retri_first_Name + " " +""+ " " + retri_last_Name)
					.append("\"").append(",").append("\"").append(retri_rank).append("\"").append(",").append("\"")
					.append(retri_sign_Date).append("\"").append(",").append("\"").append("OFFICER").append("\"").append("]").append(",");
				}
					
				else
				{
					retrieve_title.append("[").append("\"")
					.append(retri_title + " " + retri_first_Name + " " +""+ " " + retri_last_Name)
					.append("\"").append(",").append("\"").append(retri_rank).append("\"").append(",").append("\"")
					.append(retri_sign_Date).append("\"").append(",").append("\"").append("CREW").append("\"").append("]").append(",");
				}
			}
			co.close();
			pstm.close();
			rset.close();
		} catch (Exception e) {
			System.out.println(e);

		}

	}
}