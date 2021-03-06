package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Giohangbean;
import bo.Giohangbo;

/**
 * Servlet implementation class editController
 */
@WebServlet("/editController")
public class editController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editController() {
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
		String masach=request.getParameter("id");
		int slm=Integer.parseInt(request.getParameter("slm"));	
		Giohangbo g=(Giohangbo)session.getAttribute("GioHang");
		if(slm!=0){
			//out.print(slm);
			for(Giohangbean gh:g.ds){
				if(gh.getMasach().trim().toLowerCase().equalsIgnoreCase(masach.trim().toLowerCase())){
					gh.setSoluong((double)slm);
					response.getWriter().print(1);
					return;
				}
			}
			session.setAttribute("GioHang", g);
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
