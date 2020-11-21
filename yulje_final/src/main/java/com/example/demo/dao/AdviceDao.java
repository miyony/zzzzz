package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.example.demo.db.AdviceManager;
import com.example.demo.vo.Advice_BoardVo;


@Repository
public class AdviceDao {
	
	public List<Advice_BoardVo> findAll(HashMap map){
		return AdviceManager.findAll(map);
	}
	
	public int insert(Advice_BoardVo ab) {
		return AdviceManager.insert(ab);
	}
	
	public Advice_BoardVo findByNo(int no) {
		return AdviceManager.findByNo(no);
	}
	
	public int updateStep(HashMap map) {
		return AdviceManager.updateStep(map);
	}
	
	public int getNextNo() {
		return AdviceManager.getNextNo();
		
	}
	
	public int update(Advice_BoardVo ab) {
		return AdviceManager.update(ab);
		
	}
	
	public int delete(HashMap map) {
		return AdviceManager.delete(map);
	}
	
	public int getTotalCount() {
		return AdviceManager.getTotalCount();
	}
	
//	public boolean isMember(String id, String pwd) {
//		return NoticeManager.isMember(id, pwd);
//		
//	}

}
