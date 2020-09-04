package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.Tab;

@Controller
public class AdminController {
	
	@Resource(name="tabbiz")
	Biz<String, Tab> tabbiz;

	
	@RequestMapping("/loginimpl.mc")
	public ModelAndView loginimpl(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String id = request.getParameter("id");
		String pwd= request.getParameter("pwd");
		Tab user = null;
		
		try {
			user = tabbiz.get(id);
			if(user.getPwd().equals(pwd)) {
				if(user.getAdmin_id()==null) {
					HttpSession session = request.getSession();
					session.setAttribute("logintable", user);
					mv.addObject("centerpage", "admin/home");
				}else {
					mv.addObject("centerpage", "admin/loginfail");
				}
			}else {
				mv.addObject("centerpage", "admin/loginfail");
			}
		} catch (Exception e) {
			mv.addObject("centerpage", "admin/loginfail");
			e.printStackTrace();
		}
		mv.setViewName("main"); //자동으로 .jsp를 붙여서 실행

		return mv;
	}
	@RequestMapping("/sales.mc")
	public ModelAndView sales() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main"); //자동으로 .jsp를 붙여서 실행
//		mv.addObject("centerpage", "admin/loginfail");
		mv.addObject("centerpage", "admin/sales");

		return mv;
	}
	@RequestMapping("/menu.mc")
	public ModelAndView menu() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main"); //자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "admin/menu");

		return mv;
	}
	@RequestMapping("/bull.mc")
	public ModelAndView bull() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "admin/bull");

		return mv;
	}
}
