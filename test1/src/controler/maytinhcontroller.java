package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class maytinhcontroller
 */
@WebServlet("/maytinhcontroller")
public class maytinhcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public maytinhcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//	response.getWriter().append("Served at: ").append(request.getContextPath());
		String soa=request.getParameter("txta");
   		String sob=request.getParameter("txtb");
   		String teama=soa+" ";
   		String teamb=sob+" ";
   		if(soa!=null &&sob!=null && !teama.equalsIgnoreCase(" ")&&!teamb.equalsIgnoreCase(" ")){
   			double a=Double.parseDouble(soa);
   			double b=Double.parseDouble(sob);
   			double kq=0;
   			if(request.getParameter("txtcong")!=null){
   				kq=a+b;
   			}
   			else if(request.getParameter("txttru")!=null){
   				kq=a-b;
   			}
   			else if(request.getParameter("txtnhan")!=null){
   				kq=a*b;
   			}
   			else if(request.getParameter("txtchia")!=null && b!=0){
   				kq=a/b;
   			}
   			
   			if(kq==(long)kq){
   				//response.sendRedirect("maytinh.jsp?a="+soa+"&b="+sob+"&kq="+((long)kq));
   				response.getWriter().print(kq);
   				request.setAttribute("kq", kq);
   				request.setAttribute("a", a);
   				request.setAttribute("b", b);// chỉ dùng để truyền dữ liệu dữa severlet và maytinh.jsp
   				
   			} 
   			
   			
   		}
   		RequestDispatcher rd=request.getRequestDispatcher("maytinh.jsp");
   		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
