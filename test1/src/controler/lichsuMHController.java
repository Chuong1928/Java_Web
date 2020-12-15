package controler;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Lichsumuahang;
import bean.Giohangbean;
import bean.loaibean;
import bean.sachbean;
import bo.Giohangbo;
import bo.loaibo;
import bo.sachbo;
import dao.DungChung;
import dao.MyFunction;

/**
 * Servlet implementation class lichsuMHController
 */
@WebServlet("/lichsuMHController")
public class lichsuMHController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsuMHController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		try {
			sachbo sbo=new sachbo();
			DungChung dc=new DungChung();
			MyFunction f=new MyFunction();
			ArrayList<sachbean> lsmh= f.lsmuahang((String)session.getAttribute("username"));
			ArrayList<Giohangbean> lsmhv1= f.lsmuahangv2((String)session.getAttribute("username"));
			ArrayList<Lichsumuahang> cthd=f.Chitiethoadon((String)session.getAttribute("username"));
			ArrayList<sachbean> ds= sbo.getsach();
			loaibo lbo= new loaibo();
			ArrayList<loaibean> dsloai=lbo.getloai();
			
			 request.setAttribute("cthd", cthd);
			 request.setAttribute("lsmh", lsmh);
			 request.setAttribute("lsmhv1", lsmhv1);
			 request.setAttribute("dssach", ds);
			 request.setAttribute("dsloai", dsloai);
	
			 //,response.getWriter().print(session.getAttribute("GioHang"));
			 RequestDispatcher rd1=request.getRequestDispatcher("lichsumuahang.jsp");
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
