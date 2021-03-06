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

import bean.khachhangbean;
import bean.loaibean;
import bean.sachbean;
import bo.loaibo;
import bo.sachbo;
import dao.MyFunction;

/**
 * Servlet implementation class profileController
 */
@WebServlet("/profileController")
public class profileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public profileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			
			sachbo sbo=new sachbo();
			HttpSession session=request.getSession();
			ArrayList<sachbean> ds= sbo.getsach();
			loaibo lbo= new loaibo();
			ArrayList<loaibean> dsloai=lbo.getloai();
			MyFunction f=new MyFunction();
			ArrayList<khachhangbean> khachhang =f.Thongtinkhachhang((String)session.getAttribute("username"));
			 request.setAttribute("khachhang", khachhang);
			 request.setAttribute("dssach", ds);
			 request.setAttribute("dsloai", dsloai);
			 RequestDispatcher rd1=request.getRequestDispatcher("profile.jsp");
		   	 rd1.forward(request, response);
			
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
