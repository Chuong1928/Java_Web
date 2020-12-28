package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.dotunghobo;

/**
 * Servlet implementation class ThemDotUngHo
 */
@WebServlet("/ThemDotUngHo")
public class ThemDotUngHo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemDotUngHo() {
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
		 String MaDotUngHo = request.getParameter("txtmadotuh");
		 String MaDVUH = request.getParameter("txtdonviuh");
		 String NgayUngHo = request.getParameter("txtngayuh");
		 String HinhThucUngHo =request.getParameter("txthinthucuh");
		 String SoLuongUngHo =request.getParameter("txtsluh");
		 String DonViTinh =request.getParameter("txtdvtinh");
		 dotunghobo duhb= new dotunghobo();
		  if(duhb.ThemDotUngHo(MaDotUngHo, MaDVUH, NgayUngHo)!=0 && duhb.ThemChiTietDotUngHo(MaDotUngHo, HinhThucUngHo, SoLuongUngHo, DonViTinh)!=0) { response.getWriter().println("Thêm  thành công");
				  response.sendRedirect("UngHoController");
				 }else { response.getWriter().println("Thêm  thất bại");
				 response.getWriter().println(MaDotUngHo);
				 response.getWriter().println(MaDVUH);
				 response.getWriter().println(NgayUngHo);
				 response.getWriter().println(HinhThucUngHo);
				 response.getWriter().println(SoLuongUngHo);
				 response.getWriter().println(DonViTinh);
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
