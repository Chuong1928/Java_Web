package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.Giohangbo;

/**
 * Servlet implementation class cartController
 */
@WebServlet("/cartController")
public class cartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String masach=request.getParameter("id");
		String tensach=request.getParameter("tensach");
		String tacgia=request.getParameter("tacgia");
		String gia=request.getParameter("gia");
		String url_anh=request.getParameter("hinhanh");
		HttpSession session=request.getSession();
		if(masach!=null){
			Giohangbo gh;
			if(session.getAttribute("GioHang")==null){//kiem tra mua hang` lan` dau`
				gh=new Giohangbo();
				session.setAttribute("GioHang",gh);	//tao gio hang
			}
			//gan' session vao` bien gh
			gh=(Giohangbo)session.getAttribute("GioHang");
			gh.ThemGH(masach, tensach,tacgia,url_anh,Double.parseDouble(gia), 1);
			//luu lai ss
			session.setAttribute("GioHang", gh);
			//response.sendRedirect("viewcart.jsp");
		}
			response.sendRedirect("ViewcartController");
			/*
			 * RequestDispatcher rd1=request.getRequestDispatcher("viewmycart.jsp");
			 * rd1.forward(request, response);
			 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
