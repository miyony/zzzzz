package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DoctorManager;
import com.example.demo.vo.DoctorVo;

@Repository
public class DoctorDao {

	public List<DoctorVo> findAll() {
		return DoctorManager.findAllDoc();
	}
	
	public DoctorVo findByNo(int doc_no) {
		return DoctorManager.findByNoDoc(doc_no);
	}
}
