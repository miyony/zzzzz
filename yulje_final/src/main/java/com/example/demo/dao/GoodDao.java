package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.GoodManager;
import com.example.demo.vo.Good_BoardVo;


@Repository
public class GoodDao {
	
	public List<Good_BoardVo> findAll(HashMap map){
		return GoodManager.findAll(map);
	}
	
	public int insert(Good_BoardVo gb) {
		return GoodManager.insert(gb);
	}
	
	public Good_BoardVo findByNo(int no) {
		return GoodManager.findByNo(no);
	}
	
	public int updateStep(HashMap map) {
		return GoodManager.updateStep(map);
	}
	
	public int getNextNo() {
		return GoodManager.getNextNo();
		
	}
	
	public int update(Good_BoardVo gb) {
		return GoodManager.update(gb);
		
	}
	
	public int delete(HashMap map) {
		return GoodManager.delete(map);
	}
	
	public int getTotalCount() {
		return GoodManager.getTotalCount();
	}
	
//	public boolean isMember(String id, String pwd) {
//		return NoticeManager.isMember(id, pwd);
//		
//	}

}
