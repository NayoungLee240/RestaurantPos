package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.Bulletin;


@Repository("bulletindao")
public interface BulletinDao extends Dao<Integer, Bulletin> {

}
