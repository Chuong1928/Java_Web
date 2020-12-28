package org.o7planning.hellospringmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.o7planning.hellospringmvc.bo.loaibo;
import org.o7planning.hellospringmvc.bo.sachbo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SachController {
	@RequestMapping("/minhkhai")
	public ModelAndView getdatasach(Model model,HttpServletRequest request) {
		model.addAttribute("greeting","hello truong");
		loaibo loai = new loaibo();
		sachbo sach = new sachbo();
		String maloai = request.getParameter("ml");
		String timkiem = request.getParameter("txtsearch");
		if(maloai!=null)
			model.addAttribute("dssach", sach.getsachtheoloai(maloai));
		else if(timkiem!=null) 
			model.addAttribute("dssach", sach.getsachtk(timkiem));
		else
			model.addAttribute("dssach", sach.getsach());
		model.addAttribute("dsloai",loai.getLoai());
		model.addAttribute("size_loai",loai.getLoai().size());
		model.addAttribute("maloai",maloai);
		return new ModelAndView("hienthisach");
	}
}