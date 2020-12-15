package controler;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Lichsumuahang;
import bean.loaibean;
import bean.sachbean;
import bo.loaibo;
import bo.sachbo;
import dao.MyFunction;

/**
 * Servlet implementation class ThanhToanController
 */
@WebServlet("/ThanhToanController")
public class ThanhToanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThanhToanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			HttpSession session=request.getSession();
			MyFunction f=new MyFunction();
			sachbo sbo=new sachbo();
			ArrayList<sachbean> ds= sbo.getsach();
			loaibo lbo= new loaibo();
			ArrayList<loaibean> dsloai=lbo.getloai();
			 request.setAttribute("dssach", ds);
		     request.setAttribute("dsloai", dsloai);
		     ArrayList<Lichsumuahang> donhang=f.DonHangCanThanhToan((String)session.getAttribute("username"));
		     request.setAttribute("donhang", donhang);
		     RequestDispatcher rd1;
		     if(session.getAttribute("username")!=null) {
		    	  rd1=request.getRequestDispatcher("ThanhToan.jsp");
		    	  rd1.forward(request, response);
		     }else
		    	 response.sendRedirect("SachController");
			 
		     
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
