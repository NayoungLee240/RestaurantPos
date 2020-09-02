package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.Receipt;


@Repository("receiptdao")
public interface ReceiptDao extends Dao<String, Receipt> {

}