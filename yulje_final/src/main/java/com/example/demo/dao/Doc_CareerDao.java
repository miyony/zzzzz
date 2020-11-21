package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DoctorManager;
import com.example.demo.vo.Doc_CareerVo;

@Repository
public class Doc_CareerDao {

	public List<Doc_CareerVo> findAllCar(int doc_no) {
		return DoctorManager.findAllCar(doc_no);
	}
}
