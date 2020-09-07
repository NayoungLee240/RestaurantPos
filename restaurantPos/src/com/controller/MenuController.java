package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dao.MenuDao;
import com.dao.SalesDao;
import com.frame.Biz;
import com.vo.Menu;
import com.vo.Sales;

@Controller
public class MenuController {


	
	@Resource(name = "menubiz")
	Biz<String, Menu> biz;
	
	@Resource(name = "salesbiz")
	Biz<String, Sales> sbiz;

	@Autowired
	MenuDao menubiz;
	
	@Autowired
	SalesDao salesbiz;

	
	// 1���� �޴� ���� �����������
	@RequestMapping("/orderlist")
	public void orderlist(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		Menu m = new Menu();
		try {
			m = menubiz.select(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		JSONArray ja = new JSONArray();
		JSONObject obj = new JSONObject();
		obj.put("id", m.getId());
		obj.put("name", m.getName());
		obj.put("price", m.getPrice());
		obj.put("tsales", m.getTsales());
		obj.put("category", m.getCategory());
		obj.put("img1", m.getImg1());
		obj.put("img2", m.getImg2());
		obj.put("img3", m.getImg3());
		ja.add(obj);

		response.setContentType("text/json;charset=utf-8");
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(ja.toJSONString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	};
	
	
	//  �޴� ����Ʈ ���� �����������
	@RequestMapping("/menulist.mc")
	public void menulist(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		ArrayList<Menu> list = null;
		try {
			list = menubiz.getmenulist(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		JSONArray ja = new JSONArray();
		for(Menu m: list) {
			JSONObject obj = new JSONObject();
			obj.put("id", m.getId());
			obj.put("name", m.getName());
			obj.put("price", m.getPrice());
			obj.put("tsales", m.getTsales());
			obj.put("category", m.getCategory());
			obj.put("img1", m.getImg1());
			obj.put("img2", m.getImg2());
			obj.put("img3", m.getImg3());
			ja.add(obj);
		}
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(ja.toJSONString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	

	}
	
	//  ���� ���̺��� ����� �޴� �����������
	@RequestMapping("/waitinglist.mc")
	public void waitinglist(HttpServletRequest request,HttpServletResponse response) {
	
		ArrayList<Sales> list = null;
		HttpSession session = request.getSession();
		String table_name = (String) session.getAttribute("tableId");

		try {
			list = salesbiz.search(table_name);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		JSONArray ja = new JSONArray();
		for(Sales s: list) {
			JSONObject obj = new JSONObject();
			obj.put("id", s.getId());
			obj.put("menu_id", s.getMenu_id());
			obj.put("receipt_id", s.getReceipt_id());
			obj.put("qt", s.getQt());
			obj.put("s_service", s.getS_service());
			obj.put("s_price", s.getS_price());
			ja.add(obj);
		}
		response.setContentType("text/json;charset=euc-kr");
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(ja.toJSONString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	

	}
	
	//-----------------------------------------------------------�ؿ����� ����������
	
	//  ���� ������ ����� �޴�
	@RequestMapping("/waitinglistadmin.mc")
	public void waitinglist(HttpServletResponse response) {

		ArrayList<Sales> list = null;

		try {
			list = salesbiz.selectall();
			for (Sales sales : list) {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		JSONArray ja = new JSONArray();
		for(Sales s: list) {
			JSONObject obj = new JSONObject();
			obj.put("id", s.getId());
			obj.put("menu_id", s.getMenu_id());
			obj.put("tab_id", s.getTab_id());
			obj.put("qt", s.getQt());
			obj.put("s_service", s.getS_service());
			obj.put("s_price", s.getS_price());
			ja.add(obj);
		}
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(ja.toJSONString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	

	}
	
	// admin home ���� �ֹ���� Ŭ�� �� ������ ������ �ݿ� SERVICE �� 2�� ����
	@RequestMapping("/waitingdeladmin.mc")
	public String waitingdeladmin(HttpServletRequest request) {
		
		String id = request.getParameter("id");
		try {
			salesbiz.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:loginimpl.mc";
	}
	
	
	
	
}