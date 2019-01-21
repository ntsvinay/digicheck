package image;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class ImageProfile
 */
@WebServlet("/ImageProfile")
public class ImageProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpServletRequest request = null;
	HttpServletResponse response = null;
	String pic_Name = "";
	int count = 0;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ImageProfile() {
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
		if (Confirm_Image.count != 0) {
			if (count == 0) {
				System.out.println(count + ":-abcdefghijklmnopqrstuvwx");
				try {
					Thread.sleep(2000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				System.out.println(count + ":-abcd");
				System.out.println(pic_Name + "from outside the if");
				if (pic_Name != null) {
					response.setContentType("text/plain");
					response.setCharacterEncoding("UTF-8");
					response.getWriter().write(pic_Name);
				} else {
					response.setContentType("text/plain");
					response.setCharacterEncoding("UTF-8");
					response.getWriter().write("please confirm the image");
				}
			}
		} else {

		}
	}
	// response.getWriter().append("Served at: ").append(request.getContextPath());

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	public void getfile(String pic_Name1) throws ServletException, IOException {
		this.pic_Name = pic_Name1;
		count = 1;
		doGet(request, response);
		System.out.println(pic_Name1 + ":-it is the file name");
	}

}
