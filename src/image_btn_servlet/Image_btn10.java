package image_btn_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.button_db.Store_photo_detail;

import image.WebcamPanelExample;

/**
 * Servlet implementation class Image_btn10
 */
@WebServlet("/Image_btn10")
public class Image_btn10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String photo_btn_id="4.2";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Image_btn10() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		new WebcamPanelExample(photo_btn_id);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
