package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.mathangbean;
import bo.mathangbo;

/**
 * Servlet implementation class MatHangController
 */
@WebServlet("/MatHangController")
public class MatHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MatHangController() {
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
				
				String  key = request.getParameter("searchSkins");
				mathangbo sv=new mathangbo();
				ArrayList<mathangbean> dsmh=sv.get_from_dao();
				ArrayList<mathangbean> dstk=new ArrayList<mathangbean>();
				if(key!=null) {
					for(mathangbean s:dsmh) {
						if(s.getTenhang().trim().toLowerCase().equalsIgnoreCase(key.trim().toLowerCase())||
								s.getNhacungcap().trim().toLowerCase().equalsIgnoreCase(key.trim().toLowerCase())) {
							dstk.add(s);
						}
					}
				}
				request.setAttribute("dsmh", dsmh);
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
