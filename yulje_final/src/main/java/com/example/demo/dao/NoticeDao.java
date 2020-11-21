package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.NoticeManager;
import com.example.demo.vo.Notice_BoardVo;

@Repository
public class NoticeDao {

	public List<Notice_BoardVo> findAllNotice(HashMap map) {
		return NoticeManager.findAllNotice(map);
	}
	
	public Notice_BoardVo findByNo(int no) {
		return NoticeManager.findByNo(no);
	}
	
	public int getNextNo() {
		return NoticeManager.getNextNo();
	}
	
	public int getTotalCount() {
		return NoticeManager.getTotalCount();
	}
	
	public int updateHit(int no) {
		return NoticeManager.updateHit(no);
	}
	
	public int insert(Notice_BoardVo n) {
		return NoticeManager.insert(n);
	}
	
	public int delete(int no) {
		return NoticeManager.delete(no);
		
	}
	
	public int update(Notice_BoardVo n) {
		return NoticeManager.update(n);
	}

	
}
