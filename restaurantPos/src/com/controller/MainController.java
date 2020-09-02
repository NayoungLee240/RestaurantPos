package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping("/main.mc")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//�ڵ����� .jsp�� �ٿ��� ����
		return mv;
	}
	@RequestMapping("/tablehome.mc")
	public ModelAndView tablehome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//�ڵ����� .jsp�� �ٿ��� ����
		mv.addObject("centerpage", "tablehome");

		return mv;
	}
	@RequestMapping("/tableorder.mc")
	public ModelAndView tableorder() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");//�ڵ����� .jsp�� �ٿ��� ����
		mv.addObject("centerpage", "tableorder");

		return mv;
	}
}
