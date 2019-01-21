package com.button_db;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Avc
 */
@WebServlet("/Avc")
public class Avc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Avc() {
		super();
		// TODO Auto-generated constructor stub
	}

	int a = 0;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from imgtable");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Blob b = rs.getBlob(2);
				System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image

				FileOutputStream fout = new FileOutputStream("D:\\Other\\Wallpaper\\fhghjg_2018.jpg");
				// String mystring = new String(barr);
				StringBuffer buffer = new StringBuffer();
				// buffer.append(mystring);
				// System.out.println(buffer+":-buffer");*/
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				buffer.append(imgDataBase64);
				request.setAttribute("ab", buffer);
				//fout.write(barr);
				// System.out.println(barr.toString());
				fout.close();
			} // end of if
			System.out.println("ok");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher rd = request.getRequestDispatcher("/abc.jsp");
		rd.forward(request, response);
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

}
