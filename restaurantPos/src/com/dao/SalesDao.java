package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.Sales;
@Repository("salesdao")

public interface SalesDao extends Dao<String, Sales> {
	
	
	
	
}
