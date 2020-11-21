package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DoctorManager;
import com.example.demo.vo.Doc_EducationVo;

@Repository
public class Doc_EducationDao {

	public List<Doc_EducationVo> findAllEdu(int doc_no) {
		return DoctorManager.findAllEdu(doc_no);
	}
}
