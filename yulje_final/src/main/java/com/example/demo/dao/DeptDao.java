package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DeptManager;
import com.example.demo.vo.DepartmentVo;
import com.example.demo.vo.DoctorVo;

@Repository
public class DeptDao {

	// 전체목록
	public List<DepartmentVo> findAll() {
		return DeptManager.findAll();
	}

	public List<DoctorVo> findByDept(HashMap map) {
		return DeptManager.findByDept(map);
	}

	// 가나다순 정렬
	public List<DepartmentVo> findAllSort() {
		return DeptManager.findAllSort();
	}

	// 상세보기
	public DepartmentVo findByNo(int dept_no) {
		return DeptManager.findByNoDept(dept_no);
	}

}