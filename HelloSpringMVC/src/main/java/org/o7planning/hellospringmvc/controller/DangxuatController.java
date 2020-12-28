package org.o7planning.hellospringmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DangxuatController {
	@RequestMapping("/dangxuat")
	public ModelAndView dangxuat(Model model,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
//		String status = request.getParameter("status");
//		if(status=="1") {
//			session.invalidate();
//			return new ModelAndView("dangnhap");
//			
//		}else {
//			return new ModelAndView("hienthisach");
//		}
		session.invalidate();
		return new ModelAndView("dangnhap");
	}
}
