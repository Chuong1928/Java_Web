package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.donviunghobean;
import bean.dotnhanunghobean;
import bean.dotunghobean;
import bo.donviunghobo;
import bo.dotnhanunghobo;
import bo.dotunghobo;

/**
 * Servlet implementation class DotNhanUngHoController
 */
@WebServlet("/DotNhanUngHoController")
public class DotNhanUngHoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DotNhanUngHoController() {
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
			dotnhanunghobo  dnuhb= new dotnhanunghobo();
			ArrayList<dotnhanunghobean> dsdnuh=dnuhb.get_from_dao();
			request.setAttribute("dsdnuh", dsdnuh);
			
			
			dotunghobo  uhb= new dotunghobo();
			ArrayList<dotunghobean> uh=uhb.get_from_dao();
			request.setAttribute("dsduh", uh);
			
			donviunghobo  dvb= new donviunghobo();
			ArrayList<donviunghobean> dvuh=dvb.get_from_dao();
			request.setAttribute("dvuh", dvuh);
			RequestDispatcher rd1=request.getRequestDispatcher("dotnhanungho.jsp");
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
