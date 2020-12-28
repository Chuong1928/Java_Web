package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.dotnhanunghobo;

/**
 * Servlet implementation class XoaDotNhanUngHo
 */
@WebServlet("/XoaDotNhanUngHo")
public class XoaDotNhanUngHo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaDotNhanUngHo() {
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
		//sachbo sbo = new sachbo();
		 dotnhanunghobo dnuhb= new dotnhanunghobo();
		String MaDotNhanUngHo=request.getParameter("id");
		if(MaDotNhanUngHo!=null){
			if(dnuhb.XoaChiTietDotNhanUngHo(MaDotNhanUngHo)!=0||dnuhb.XoaChiTietDotNhanUngHo(MaDotNhanUngHo)==0) {
				if(dnuhb.XoaDotNhanUngHo(MaDotNhanUngHo)!=0) {
					response.getWriter().print(1);
				}
				
			}else {
				 response.getWriter().print(0);
				
			}
			
			
		}else {
			response.getWriter().print(0);
			
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
