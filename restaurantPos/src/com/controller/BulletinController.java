package com.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biz.BulletinBiz;
import com.frame.Biz;
import com.vo.Bulletin;

@Controller
public class BulletinController {

	@Resource(name="bulletinbiz")
	Biz<Integer, Bulletin> biz;
	
	@RequestMapping("/tablebull.mc")
	public ModelAndView tablebull(ModelAndView mv) {
		ArrayList<Bulletin> list = null;
		try {
			list=biz.get();
		}catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("bulllist", list);
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/bull");

		return mv;
	}
	@RequestMapping("/viewbull.mc")
	public ModelAndView viewbull(ModelAndView mv, Integer id) {
		Bulletin b = null;
		try {
			b = biz.get(id);
		}catch (Exception e) {
			e.printStackTrace();
		}
		mv.addObject("data", b);
		mv.setViewName("main");//자동으로 .jsp를 붙여서 실행
		mv.addObject("centerpage", "table/viewbull");

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
	public String savebull(Bulletin b) {
		b.setTab_id("NULL");
		b.setComment_id(0);
		try {
			biz.register(b);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:viewbull.mc?id="+b.getId();
	}
}
