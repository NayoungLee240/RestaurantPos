package com.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.frame.Biz;
import com.frame.Dao;
import com.vo.Bulletin;

@Service("bulletinbiz")

public class BulletinBiz implements Biz<Integer, Bulletin> {
	
	@Resource(name = "bulletindao")
	Dao<Integer, Bulletin> dao;

	@Override
	public void register(Bulletin v) throws Exception {
		dao.insert(v);
		
	}

	@Override
	public void remove(Integer k) throws Exception {
		int result = 0;
		result = dao.delete(k);
		if(result == 0) {
			throw new Exception();
		}
		
	}

	@Override
	public void modify(Bulletin v) throws Exception {
		int result = 0;
		result = dao.update(v);
		if(result == 0) {
			throw new Exception();
		}	
	}

	@Override
	public Bulletin get(Integer k) throws Exception {
		return dao.select(k);
	}

	@Override
	public ArrayList<Bulletin> get() throws Exception {
		return dao.selectall();
	}

	@Override
	public ArrayList<Bulletin> search(Object obj) throws Exception {
		return null;
	}

	
	

}
