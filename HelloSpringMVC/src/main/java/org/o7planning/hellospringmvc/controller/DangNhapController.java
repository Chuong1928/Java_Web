package org.o7planning.hellospringmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DangNhapController {

		@RequestMapping("/dangnhap") 
		public ModelAndView ktdangnhap(Model model,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
			try {
					String un = request.getParameter("txtun");
					String pass = request.getParameter("txtpass");
					String logout = request.getParameter("logout");
					
					if(un==null ||logout=="1" ) {
						session.invalidate();
						return new ModelAndView("dangnhap");
					}
					else
						if(un.equals("abc") && pass.equals("123")) {
							session.setAttribute("un",un);
							response.sendRedirect("minhkhai");
							return null;
						}else {
							model.addAttribute("tb","dns");
							return new ModelAndView("dangnhap");
						}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();return null;
			}
		}
	
		
}
