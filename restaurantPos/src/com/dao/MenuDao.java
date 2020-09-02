package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.Menu;
@Repository("menudao")

public interface MenuDao extends Dao<String, Menu> {
	
	
	
	
}
