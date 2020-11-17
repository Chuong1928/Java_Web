package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MyFunction;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
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
				  	request.setCharacterEncoding("UTF-8");
				    response.setCharacterEncoding("UTF-8");
				    response.setContentType("text/html; charset=UTF-8");
				    String username=request.getParameter("username");
				    String password=request.getParameter("password");
				    MyFunction fun=new MyFunction();
				    boolean login=false;
				    if(username!=null && password!=null) {
				    	 login=fun.check_login(username, password);
				    }
				    
				    if(login==true) {
				    	
				    	 session.setAttribute("username", username);
				    	response.getWriter().print(1);
				    	
				    	
				    }
				    else
				    	response.getWriter().print(0);
				    //response.sendRedirect("SachController");
//			    	 RequestDispatcher rd1=request.getRequestDispatcher("SachController");
//				   	 rd1.forward(request, response);
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
