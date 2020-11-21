package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DoctorManager;
import com.example.demo.vo.Doc_ScheduleVo;

@Repository
public class Doc_ScheduleDao {
	
	public List<Doc_ScheduleVo> findAllSche(int doc_no) {
		return DoctorManager.findAllSche(doc_no);
	}
}
