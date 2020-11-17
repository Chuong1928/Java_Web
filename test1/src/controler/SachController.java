package controler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.loaibean;
import bean.sachbean;
import bo.Giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class SachController
 */
@WebServlet("/SachController")
public class SachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SachController() {
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
				HttpSession session=request.getSession();
			//	Random rd=new Random();
				  request.setCharacterEncoding("UTF-8");
				    response.setCharacterEncoding("UTF-8");
				    response.setContentType("text/html; charset=UTF-8");
				sachbo sbo=new sachbo();
				ArrayList<sachbean> ds= sbo.getsach();
				loaibo lbo= new loaibo();
				ArrayList<loaibean> dsloai=lbo.getloai();
				ArrayList<sachbean> dstk=new ArrayList<sachbean>();
				String key=request.getParameter("txttk");
				//response.getWriter().print(key);
				if(key!=null) {
				    for(sachbean s: ds) {
			        	if(s.getTensach().toLowerCase().contains(key.toLowerCase().trim())
			        			||s.getTacgia().toLowerCase().contains(key.toLowerCase().trim())) {
			        			dstk.add(s);		
			        	}
			        }
				}
				
		        request.setAttribute("dssach", ds);
		        request.setAttribute("dsloai", dsloai);
		        request.setAttribute("dssachtk", dstk);
//		       
//		        response.getWriter().print(s.getTensach());
		        RequestDispatcher rd1=request.getRequestDispatcher("hahaha.jsp");
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