package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Sinhvienbean;
import bo.SinhVienbo;

/**
 * Servlet implementation class SinhVienController
 */
@WebServlet("/SinhVienController")
public class SinhVienController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SinhVienController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		    response.setCharacterEncoding("UTF-8");
		    response.setContentType("text/html; charset=UTF-8");
		
		try {
			
		 	    String  ID = request.getParameter("ID");
				SinhVienbo sv=new SinhVienbo();
				ArrayList<Sinhvienbean> dssv=sv.get_from_dao();
				ArrayList<Sinhvienbean> dstk=new ArrayList<Sinhvienbean>();
				if(ID!=null) {
					for(Sinhvienbean s:dssv) {
						if(s.getID().trim().equalsIgnoreCase(ID)) {
							dstk.add(s);
						}
					}
				}
				request.setAttribute("dssv", dssv);
				request.setAttribute("dstk", dstk);
				RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
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
