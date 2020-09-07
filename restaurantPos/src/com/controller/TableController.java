package com.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Tab;

@Controller
public class TableController {

	@Resource(name="tabbiz")
	Biz<String, Tab> tabbiz;
	
	@RequestMapping("/tablelogin.mc")
	public ModelAndView tablelogin() {
		ModelAndView mv = new ModelAndView();
		
		ArrayList<Tab> list = null;
		
		try {
			list = tabbiz.get();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.addObject("tablelist", list);
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/login");

		return mv;
	}
	@RequestMapping("/tableloginimpl.mc")
	public ModelAndView tableloginimpl(HttpServletRequest request, String id) {
		ModelAndView mv = new ModelAndView();
		
		Tab table = null;
		
		try {
			table = tabbiz.get(id);
			HttpSession session = request.getSession();
			session.setAttribute("logintable", table);
			session.setAttribute("tableId", table.getId());  
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/home");

		return mv;
	}
	@RequestMapping("/tablelogout.mc")
	public String tablelogout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		if(session!=null) {
			session.invalidate();
		}

		return "redirect:tablelogin.mc";
	}
}
