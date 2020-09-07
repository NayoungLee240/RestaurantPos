package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.ReceiptDao;
import com.dao.SalesDao;
import com.frame.Biz;
import com.vo.Receipt;
import com.vo.Sales;

@Controller
public class ReceiptController {


	
	@Resource(name = "receiptbiz")
	Biz<String, Receipt> biz;
	
	@Resource(name = "salesbiz")
	Biz<String, Sales> sbiz;

	
	@Autowired
	ReceiptDao receiptbiz;
	
	@Autowired
	SalesDao salesbiz;
	
	
	
	
	        // �ֹ��ϱ� �������� �����Ͱ��� JSON �������� �������  ���⼭ SALES, RECEIPT ����Ŭ�����Ϳ� ���ÿ� �Է�
	@RequestMapping("/orderreceipt")
	@ResponseBody
	public List<Receipt> tablereceipt(@RequestBody List<Map> arrAnlys, HttpServletRequest request){
		HttpSession session = request.getSession();
		String table_name = (String) session.getAttribute("tableId");
	    List order = arrAnlys;
	    List<Map<String, Object>> listMap = order;  

	    int total = 0;
	    for(int i=0; i < listMap.size(); i++) {
		    String id = listMap.get(i).get("id").toString(); 
		    String price = listMap.get(i).get("price").toString(); 
		    String name = listMap.get(i).get("name").toString(); 
		    String tsales = listMap.get(i).get("tsales").toString(); 
		    String category = listMap.get(i).get("category").toString(); 
		    int payment = 1;
		    int intprice = Integer.parseInt(price);
		    int intqt = Integer.parseInt(tsales);
		    int qttotal = intprice*intqt ;
		    total += qttotal;
		    
		    Sales sales = new Sales(name, table_name, intqt, 1, intprice);
		    try {
				salesbiz.insert(sales);
			} catch (Exception e) {
				e.printStackTrace();
			}
		    
	    };
	    int payment= 1;
	    Receipt receipt = new Receipt(table_name,payment,total);
	    try {
			biz.register(receipt);
		} catch (Exception e) {
			e.printStackTrace();
		}
	    
	    List<Receipt> anlysList = new ArrayList<Receipt>();
	    return anlysList;
		
	};

	
	// RECEIPT ������ ��� Nextval, Currval �� �̿��ؼ� ���� ���������� �������⶧���� intreceiptid getreceiptid ���
	@RequestMapping("/receiptlists")
	public void receiptlist(HttpServletRequest request ,HttpServletResponse response) {
		Receipt receipt = new Receipt();
		String receiptid = null;
		int intreceiptid = 0;
		String getreceiptid = null;
		ArrayList<Receipt> list = null;
		try {
			receiptid = receiptbiz.getreceiptid();
			
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		intreceiptid = Integer.parseInt(receiptid)-1;
		getreceiptid = Integer.toString(intreceiptid);
	
		try {
			receipt = biz.get(getreceiptid);
		} catch (Exception e) {
	
			e.printStackTrace();
		};
		
		JSONArray ja = new JSONArray();	
		JSONObject obj = new JSONObject();

		obj.put("id", receipt.getId());
		obj.put("tab_id", receipt.getTab_id());
		obj.put("regdate", receipt.getRegdate());
		obj.put("payment", receipt.getPayment());
		obj.put("total", receipt.getTotal());
		
	response.setContentType("text/json;charset=utf-8");
	PrintWriter out;
	try {
		out = response.getWriter();
		out.print(obj.toJSONString());
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
	};


};

