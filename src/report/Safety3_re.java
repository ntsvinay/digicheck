package report;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Safety3_re
 */
@WebServlet("/Safety3_re")
public class Safety3_re extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String url1 = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "System";
	String dbpsw = "Nuevo";
	String path = "D:/Other/Wallpaper/";
	String sec1_o = "", sec1_h = "", sec1_t = "", sec1_time = "", sec1_date = "", LOC_OF_ES = "", REASN_OF_ES = "",
			sec2_minuts_by = "", SEC2_INTERVAL = "", sec3_to_time = "", sec3_to_date = "", sec3_from_time = "",
			sec3_from_date = "", sec4_additional = "", sec4_oxy = "", sec4_hydro = "", sec4_toxic = "";
	StringBuilder condition = new StringBuilder();
	StringBuilder gesChecked = new StringBuilder();
	StringBuilder image = new StringBuilder();
	StringBuilder scan_name = new StringBuilder();
	StringBuilder image_builder = new StringBuilder();
	StringBuilder in_out_scan = new StringBuilder();
	StringBuilder sec4_gases_scan = new StringBuilder();
	//--------------------------------------------------------
	StringBuffer mintempBuild = new StringBuffer();
	StringBuffer pic2 = new StringBuffer();
	StringBuffer pic3 = new StringBuffer();
	StringBuffer pic4 = new StringBuffer();
	StringBuffer pic5 = new StringBuffer();
	StringBuffer pic6 = new StringBuffer();
	StringBuffer pic7 = new StringBuffer();
	StringBuffer pic8 = new StringBuffer();
	StringBuffer pic9 = new StringBuffer();
	StringBuffer pic10 = new StringBuffer();
	StringBuffer pic11 = new StringBuffer();
	StringBuffer pic12 = new StringBuffer();
	//--------------------------------------------------
	
	StringBuilder maxtempBuild = new StringBuilder();
	StringBuilder visiblityBuild = new StringBuilder();
	StringBuilder swellDirectBuild = new StringBuilder();
	StringBuilder waterTempBuild = new StringBuilder();
	StringBuilder pressureBuild = new StringBuilder();
	StringBuilder windSpeedBuild = new StringBuilder();
	String checklistname = null;
	String checklistnumber = null;
	int type = 0;
	String userdetail = null;
	String timestamp = null;
	String SEC4_GAS_DIGI = null, SEC4_SCAN_DIGI = null, USER_SCAN_DIGI = null, USER_PHOTO_DIGI = null,
			USER_SCAN_IN_OUT_DIGI = null, COMPLETE_CHECKLIST = null;

	public void getvalues() throws SQLException, ClassNotFoundException {
		PreparedStatement pstmg = null;
		Connection cong = null;
		ResultSet rsg = null;
		Class.forName(driverName);
		cong = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
		String sql = "SELECT * FROM SAFETY_CHECKLIST_INFO";
		pstmg = cong.prepareStatement(sql);
		rsg = pstmg.executeQuery();
		while (rsg.next()) {
			checklistname = rsg.getString(2).toString();
			checklistnumber = rsg.getString(3).toString();
			System.out.println(sql);
			type = Integer.parseInt(checklistnumber);
			type = type - 1;
		}
		cong.close();
		rsg.close();
		pstmg.close();
		USER_SCAN_IN_OUT_DIGI = " USER_SCAN_IN_OUT_DIGI_" + checklistname + "_" + type + "";
		USER_SCAN_DIGI = " USER_SCAN_DIGI_" + checklistname + "_" + type + "";
		USER_PHOTO_DIGI = " USER_PHOTO_DIGI_" + checklistname + "_" + type + "";
		SEC4_SCAN_DIGI = " SEC4_SCAN_DIGI_" + checklistname + "_" + type + "";
		SEC4_GAS_DIGI = " SEC4_GAS_DIGI_" + checklistname + "_" + type + "";
		COMPLETE_CHECKLIST = " COMPLETE_CHECKLIST_" + checklistname + "_" + type + "";

	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Safety3_re() {
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
		image.append("[");
		image_builder.append("[");
		in_out_scan.append("[");
		gesChecked.append("[");
		sec4_gases_scan.append("[");
		doPost(request, response);
		RequestDispatcher go = request.getRequestDispatcher("safety3Report2.jsp");
		go.forward(request, response);
		image.setLength(0);
		image_builder.setLength(0);
		gesChecked.setLength(0);
		scan_name.setLength(0);
		condition.setLength(0);
		in_out_scan.setLength(0);
		sec4_gases_scan.setLength(0);
		mintempBuild.setLength(0);
		pic2.setLength(0);
		pic3.setLength(0);
		pic4.setLength(0);
		pic5.setLength(0);
		pic6.setLength(0);
		pic7.setLength(0);
		pic8.setLength(0);
		pic9.setLength(0);
		pic10.setLength(0);
		pic11.setLength(0);
		pic12.setLength(0);
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			getvalues();
			String sql = "SELECT * FROM " + COMPLETE_CHECKLIST + "";
			Class.forName(driverName);
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			System.out.println(sql);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				LOC_OF_ES = rs.getString("LOC_OF_ES");
				REASN_OF_ES = rs.getString("REASN_OF_ES");
				sec1_o = rs.getString("SEC1_OXY");
				sec1_h = rs.getString("SEC1_HYDRO");
				sec1_t = rs.getString("SEC1_TOXIC");
				sec1_time = rs.getString("SEC1_TIME");
				sec1_date = rs.getString("SEC1_DATE");
				sec2_minuts_by = rs.getString("SEC2_MINTBY");
				SEC2_INTERVAL = rs.getString("SEC2_INTERVAL");
				sec3_from_date = rs.getString("SEC3_FROM_DATE");
				sec3_from_time = rs.getString("SEC3_FROM_TIME");
				sec3_to_date = rs.getString("SEC3_TO_DATE");
				sec3_to_time = rs.getString("SEC3_TO_TIME");
				sec4_additional = rs.getString("CONDITION_7");
				sec4_oxy = rs.getString("SEC4_OXY");
				sec4_hydro = rs.getString("SEC4_HYDRO");
				sec4_toxic = rs.getString("SEC4_TOXIC");
				/*
				 * gesChecked.append("[" + "[" + rs.getString("SEC4_OXY") + "," +
				 * rs.getString("SEC4_HYDRO") + "," + rs.getString("SEC4_TOXIC") + "," + ("\"")
				 * + "vinay" + ("\"") + "]" + "]");
				 */

				condition.append("[" + ("\"") + rs.getString("CONDITION_1") + ("\"") + "," + ("\"")
						+ rs.getString("CONDITION_2") + ("\"") + "," + ("\"") + rs.getString("CONDITION_3") + ("\"")
						+ "," + ("\"") + rs.getString("CONDITION_4") + ("\"") + "," + ("\"")
						+ rs.getString("CONDITION_5") + ("\"") + "," + ("\"") + rs.getString("CONDITION_6") + ("\"")
						+ "," + ("\"") + rs.getString("CONDITION_8") + ("\"") + "," + ("\"")
						+ rs.getString("CONDITION_9") + ("\"") + "," + ("\"") + rs.getString("CONDITION_10") + ("\"")
						+ "," + ("\"") + rs.getString("CONDITION_11") + ("\"") + "]");
			}
			con.close();
			ps.close();
			rs.close();
			scan_img();
			scan_img1();
			scan_img2();
			scan_img3();
			scan_img4();
			scan_img5();
			scan_img6();
			scan_img7();
			scan_img8();
			scan_img9();
			scan_img10();
			scan_img11();
			
			scan_detail();
			scan_in_out_detail();
			sec4_gas();
			sec4_scan();
			request.setAttribute("ab", mintempBuild);
			request.setAttribute("pic2", pic2);
			request.setAttribute("pic3", pic3);
			request.setAttribute("pic4", pic4);
			request.setAttribute("pic5", pic5);
			request.setAttribute("pic6", pic6);
			request.setAttribute("pic7", pic7);
			request.setAttribute("pic8", pic8);
			request.setAttribute("pic9", pic9);
			request.setAttribute("pic10", pic10);
			request.setAttribute("pic11", pic11);
			request.setAttribute("pic12", pic12);
			request.setAttribute("image", image);
			request.setAttribute("image_builder", image_builder);
			request.setAttribute("LOC_OF_ES", LOC_OF_ES);
			request.setAttribute("REASN_OF_ES", REASN_OF_ES);
			request.setAttribute("in_out_scan", in_out_scan);
			request.setAttribute("SEC2_INTERVAL", SEC2_INTERVAL);
			request.setAttribute("sec3_from_date", sec3_from_date);
			request.setAttribute("sec3_from_time", sec3_from_time);
			request.setAttribute("sec3_to_date", sec3_to_date);
			request.setAttribute("sec3_to_time", sec3_to_time);
			request.setAttribute("sec4_additional", sec4_additional);
			request.setAttribute("gas", gesChecked);
			request.setAttribute("sec4_scan", sec4_gases_scan);
			request.setAttribute("condition", condition);
			request.setAttribute("sec1_o", sec1_o);
			request.setAttribute("sec1_h", sec1_h);
			request.setAttribute("sec1_t", sec1_t);
			request.setAttribute("sec1_time", sec1_time);
			request.setAttribute("sec1_date", sec1_date);
			request.setAttribute("SEC2_MINTBY", sec2_minuts_by);
			System.out.println(LOC_OF_ES + REASN_OF_ES + sec2_minuts_by);
			System.out.println("conditon:=" + condition);

			// doGet(request, response);
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e);
		}

	}
//-----------------------------------------------------------------------------------------------------------
	public void scan_img() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from "+USER_PHOTO_DIGI+" where ID='1.1'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				//System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic1.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				mintempBuild.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*try {
			String sql = "SELECT * FROM " + USER_PHOTO_DIGI + " where TIMESTAMP=" + "'"
					+ java.time.LocalDate.now().toString() + "'";
			Class.forName(driverName);
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			// System.out.println(sql);
			while (rs.next()) {
				image_builder.append("\"" + path + rs.getString("USER_DETAILS") + ".png" + "\"" + ",");

			}
			con.close();
			ps.close();
			rs.close();
			image_builder.append("]");
			System.out.println("image details:--" + image_builder);

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e);
		}*/
	}
	public void scan_img1() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from "+USER_PHOTO_DIGI+" where ID='1.2'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				//ystem.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic2.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic2.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img2() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from "+USER_PHOTO_DIGI+" where ID='1.3'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				//System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic3.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic3.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img3() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from  "+USER_PHOTO_DIGI+" where ID='2.1'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				//System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic4.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic4.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img4() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from  "+USER_PHOTO_DIGI+" where ID='2.2'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				//System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic5.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic5.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img5() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from  "+USER_PHOTO_DIGI+" where ID='2.3'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic6.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic6.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img6() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from  "+USER_PHOTO_DIGI+" where ID='3.1'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				//System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic7.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic7.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img7() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from "+USER_PHOTO_DIGI+" where ID='3.2'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				//System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic8.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic8.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img8() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from  "+USER_PHOTO_DIGI+" where ID='4.1'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic9.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic9.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img9() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from  "+USER_PHOTO_DIGI+" where ID='4.2'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic10.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic10.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img10() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from  "+USER_PHOTO_DIGI+" where ID='5.1'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic10.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic11.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void scan_img11() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "nuevo");
			PreparedStatement ps = con.prepareStatement("select * from  "+USER_PHOTO_DIGI+" where ID='5.2'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {// now on 1st row
				Blob b = rs.getBlob(3);// 2 means 2nd column data
				System.out.println(b.toString());
				byte barr[] = b.getBytes(1, (int) b.length());// 1 means first image
				FileOutputStream fout = new FileOutputStream("D:\\\\Other\\\\Wallpaper\\\\pic11.png");
				String imgDataBase64 = new String(Base64.getEncoder().encode(barr));
				pic12.append(imgDataBase64);
				fout.write(barr);
				fout.close();
			} // end of if
			//image_builder.append("]");

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//----------------------------------------------------------------------------------------------------------

	public void scan_detail() {
		try {
			String sql = "SELECT * FROM (select * from " + USER_SCAN_DIGI + " order by BUTTON_ID) where TIMESTAMP="
					+ "'" + java.time.LocalDate.now().toString() + "'";
			// System.out.println(sql);
			Class.forName(driverName);
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			System.out.println(sql);
			while (rs.next()) {
				userdetail = rs.getString(3);

				image.append(("\"") + rs.getString(3) + ("\"") + ",");
			}

			image.append("]");
			con.close();
			ps.close();
			rs.close();

			System.out.println("image buffer:-" + image);

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e);
		}
	}

	public void scan_in_out_detail() {
		try {
			String sql = "SELECT * FROM (select * from " + USER_SCAN_IN_OUT_DIGI
					+ " order by BUTTON_ID) where TIMESTAMP=" + "'" + java.time.LocalDate.now().toString() + "'";
			System.out.println(sql);
			Class.forName(driverName);
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			// System.out.println(sql);
			while (rs.next()) {
				in_out_scan.append("[" + ("\"") + rs.getString("USER_DETAILS") + ("\"") + "," + ("\"")
						+ rs.getString("USER_OUT") + ("\"") + "]" + ",");
				/*
				 * System.out.println(rs.getString("USER_DETAILS"));
				 * System.out.println(rs.getString("USER_OUT"));
				 */

			}
			con.close();
			ps.close();
			rs.close();
			in_out_scan.append("]");
			// System.out.println("in out scan:-"+in_out_scan);

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e);
		}
	}

	public void sec4_gas() {
		try {
			String sql = "SELECT * FROM (select * from " + SEC4_GAS_DIGI + " order by POINT_NUMBER) where TIMESTAMP="
					+ "'" + java.time.LocalDate.now().toString() + "'";
			// System.out.println(sql);
			Class.forName(driverName);
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			System.out.println(sql);
			while (rs.next()) {
				// System.out.println(rs.getString("OXYGEN").toString());
				gesChecked.append("[" + rs.getString("OXYGEN") + "," + rs.getString("HYDROCARBON") + ","
						+ rs.getString("TOXIC_GASES") + "]" + ",");

			}
			con.close();
			ps.close();
			rs.close();
			gesChecked.append("]");
			// System.out.println("ges checked buffer:-" + gesChecked);
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e);
		}
	}

	public void sec4_scan() {
		try {
			String sql = "SELECT * FROM (select * from " + SEC4_SCAN_DIGI + " order by BUTTON_ID) where TIMESTAMP="
					+ "'" + java.time.LocalDate.now().toString() + "'";
			// System.out.println(sql);
			Class.forName(driverName);
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "Nuevo");
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			// System.out.println(sql);
			while (rs.next()) {
				sec4_gases_scan.append(("\"") + rs.getString("USER_DETAILS") + ("\"") + ",");
				// System.out.println(rs.getString("USER_DETAILS"));

			}
			con.close();
			ps.close();
			rs.close();
			sec4_gases_scan.append("]");
			// System.out.println("sec4_gases_scan checked buffer:-" + sec4_gases_scan);
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println(e);
		}
	}
}
