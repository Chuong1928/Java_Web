package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.dotunghobo;

/**
 * Servlet implementation class ChinhSuaDotUngHo
 */
@WebServlet("/ChinhSuaDotUngHo")
public class ChinhSuaDotUngHo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChinhSuaDotUngHo() {
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
		 String MaDotUngHo = request.getParameter("madotungho");
		 String MaDVUH = request.getParameter("madonviuh");
		 String NgayUngHo = request.getParameter("ngayuh");
		 String HinhThucUngHo =request.getParameter("hinhthucuh");
		 String SoLuongUngHo =request.getParameter("soluonguh");
		 String DonViTinh =request.getParameter("donvitinh");
		 
		 dotunghobo duhb= new dotunghobo();
		  if(duhb.UpdateDotUngHo(MaDotUngHo, MaDVUH, NgayUngHo)!=0 && duhb.UpdateChiTietDotUngHo(MaDotUngHo, HinhThucUngHo, SoLuongUngHo, DonViTinh)!=0) { 
			  response.getWriter().print(1);
				/*
				 * response.getWriter().println("cập nhật  thành công");
				 * response.sendRedirect("UngHoController");
				 */
			} else { /* response.getWriter().println("Thêm  thất bại"); */
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
