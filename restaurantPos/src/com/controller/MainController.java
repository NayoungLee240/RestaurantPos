package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping("/main.mc")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		return mv;
	}
	@RequestMapping("/tablehome.mc")
	public ModelAndView tablehome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/home");

		return mv;
	}
	@RequestMapping("/tableorder.mc")
	public ModelAndView tableorder() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/order");

		return mv;
	}
	@RequestMapping("/tablereceipt.mc")
	public ModelAndView tablereceipt() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/receipt");

		return mv;
	}

	@RequestMapping("/tablebull.mc")
	public ModelAndView tablebull() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/bull");

		return mv;
	}
	@RequestMapping("/addbull.mc")
	public ModelAndView addbull() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/addbull");

		return mv;
	}
	@RequestMapping("/savebull.mc")
	public ModelAndView savebull() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/viewbull");
//추가
		return mv;
	}
	
	@RequestMapping("/adminlogin.mc")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main"); //자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "admin/login");

		return mv;
	}
	@RequestMapping("/loginimpl.mc")
	public ModelAndView loginimpl() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main"); //자동으로 .jsp를 붙여서 실행
//		mv.addObject("centerpage", "admin/loginfail");
		mv.addObject("centerpage", "admin/home");

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
