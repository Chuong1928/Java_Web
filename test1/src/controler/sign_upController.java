package controler;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MyFunction;

/**
 * Servlet implementation class sign_upController
 */
@WebServlet("/sign_upController")
public class sign_upController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sign_upController() {
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
		
		Random rd=new Random();
		HttpSession session=request.getSession();
	  	request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    String username=request.getParameter("username");
	    String password=request.getParameter("password");
	    String email=request.getParameter("email");
	    String diachi=request.getParameter("diachi");
	    String sodth=request.getParameter("sodth");
	    String hoten=request.getParameter("hoten");
	    int makh=rd.nextInt(10000);
	    MyFunction fun=new MyFunction();
	    if(fun.check_makh(Integer.toString(makh))==false && fun.check_tendn(username)==false
	    		&& fun.Sign_up(Integer.toString(makh), hoten, diachi, sodth, email, username, password)!=0) {
	    	 	session.setAttribute("username", username);
		    	response.getWriter().print(1);
	    }else {
	    	response.getWriter().print(0);
	    }
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
