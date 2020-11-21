package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.FaqManager;
import com.example.demo.vo.Faq_BoardVo;




@Repository
public class FaqDao {
	
	public List<Faq_BoardVo> findAll(HashMap map){
		return FaqManager.findAll(map);
	}
	
	public int insert(Faq_BoardVo sb) {
		return FaqManager.insert(sb);
	}
	
	public int updateHit(int no) {
		return FaqManager.updateHit(no);
	}
	
	public Faq_BoardVo findByNo(int no) {
		return FaqManager.findByNo(no);
	}
	
	public int getNextNo() {
		return FaqManager.getNextNo();
		
	}
	
	public int update(Faq_BoardVo fb) {
		return FaqManager.update(fb);
		
	}
	
	public int delete(int no) {
		return FaqManager.delete(no);
		
	}
	
	public int getTotalCount() {
		return FaqManager.getTotalCount();
	}
	
//	public boolean isMember(String id, String pwd) {
//		return NoticeManager.isMember(id, pwd);
//		
//	}

}
